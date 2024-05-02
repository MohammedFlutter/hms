import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:medica/core/route.dart';
import 'package:medica/registration/data/repository/auth_repository.dart';

@module
abstract class ApiModule {
  @Named('baseUrl')
  String get baseUrl => 'http://localhost:8080/hms/v1/';

  @lazySingleton
  Dio createDio() {
    final dio = Dio();

    dio.options.headers = {'Content-Type': 'application/json'};

    dio
      ..options.connectTimeout = const Duration(seconds: 10)
      ..options.receiveTimeout = const Duration(seconds: 7)
      ..options.sendTimeout = const Duration(seconds: 10);

    dio.interceptors.add(
      LogInterceptor(
          error: true,
          responseBody: true,
          requestBody: true,
          requestHeader: true,
          responseHeader: false,
          request: true),
    );
    // dio.interceptors.add(getIt<TokenInterceptor>());

    return dio;
  }
}

@injectable
class TokenInterceptor extends Interceptor {
  final AuthRepository authRepo;
  final GlobalKey<NavigatorState> navigatorKey;

  TokenInterceptor({
    required this.authRepo,
    required this.navigatorKey,
  });

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var accessToken = await authRepo.accessToken;

    if (accessToken == null || JwtDecoder.isExpired(accessToken)) {
      onRefreshToken();
      accessToken = await authRepo.accessToken;
    }

    if (accessToken != null && !JwtDecoder.isExpired(accessToken)) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    handleUnauthorizedError(err);
    handler.next(err);
  }

  void handleUnauthorizedError(DioException err) {
    if (err.response?.statusCode == 401) {
      authRepo.logout();
      navigatorKey.currentState
          ?.pushNamedAndRemoveUntil(CustomRoute.signIn, (route) => false);
    }
  }

  void onRefreshToken() async {
    final refreshToken = await authRepo.refreshToken;
    if (refreshToken != null) {
      var result = await authRepo.refreshAccessToken(refreshToken);
      result.when(
        success: (tokens) {
          authRepo.storeTokens(tokens!);
        },
        failure: (err) => throw err,
      );
    }
  }
}
