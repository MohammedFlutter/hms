import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:medica/core/route/route.dart';
import 'package:medica/features/registration/data/repository/auth_repository.dart';

@module
abstract class ApiModule {
  @Named('baseUrl')
  String get baseUrl => 'https://af40-196-135-80-93.ngrok-free.app/';
  // String get baseUrl => 'http://localhost:8080/';

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
    final accessToken = await _getValidAccessToken();

    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      _handleUnauthorizedError();
    }
    handler.next(err); // Continue with the original error handling
  }

  // Helper function to get a valid access token (with refresh if needed)
  Future<String?> _getValidAccessToken() async {
    var accessToken = await authRepo.accessToken;
    if (accessToken != null && !JwtDecoder.isExpired(accessToken)) {
      return accessToken;
    }

    // Try to refresh the token
    final refreshToken = await authRepo.refreshToken;
    if (refreshToken != null) {
      final result = await authRepo.refreshAccessToken(refreshToken);
      return result.when(
        failure: (failure) => null, // Refresh failed, return null
        success: (tokens) {
          authRepo.storeTokens(tokens!);
          return tokens.accessToken; // Return the new access token
        },
      );
    }

    return null; // No valid access token available
  }

  // Handle unauthorized errors (navigate to sign-in)
  void _handleUnauthorizedError() {
    authRepo.logout();
    navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(CustomRoutes.signIn, (route) => false);
  }
}
