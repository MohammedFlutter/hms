import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:medica/core/enums/role.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/features/registration/data/model/sign_in_credential.dart';
import 'package:medica/features/registration/data/model/sign_up_credential.dart';
import 'package:medica/features/registration/data/model/tokens.dart';
import 'package:medica/features/registration/data/provider/auth_provider.dart';

@injectable
class AuthRepository {
  AuthRepository(
      {required AuthProvider authProvider,
      required FlutterSecureStorage storage})
      : _authProvider = authProvider,
        _secureStorage = storage;

  final AuthProvider _authProvider;
  final FlutterSecureStorage _secureStorage;

  static const _accessTokenKey = 'access token';
  static const _refreshTokenKey = 'refresh token';

  Future<ApiResult<Tokens>> signIn(SignInCredential signInCredential) async {
    try {
      final tokens = await _authProvider.signIn(signInCredential);

      return ApiResult.success(data: tokens);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<void>> signUp(SignUpCredential signUpCredential) async {
    try {
      await _authProvider.signUp(signUpCredential);

      return const ApiResult.success();
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<Tokens>> refreshAccessToken(String refreshToken) async {
    try {
      final tokens = await _authProvider.getAccessToken('Bearer $refreshToken');
      return ApiResult.success(data: tokens); // No token storage here
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<void>> activateAccount(String otp) async {
    try {
      await _authProvider.activateAccount(otp);

      return const ApiResult.success();
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<bool> isLoggedIn() async {
    var token = await refreshToken;
    return token != null && !JwtDecoder.isExpired(token);
  }

  Future<ApiResult<void>> logout() async {
    try {
      await _authProvider.logout();
      await _secureStorage.deleteAll();
      // _preferences.clear(),

      return const ApiResult.success();
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
    // await _storage.delete(key: _tokenKey);
    // await preferences.clear();
  }

  Future<void> storeTokens(Tokens tokens) async {
    // await Future.wait([
    await _secureStorage.write(key: _accessTokenKey, value: tokens.accessToken);
    await _secureStorage.write(
        key: _refreshTokenKey, value: tokens.refreshToken);
    // ]);
  }

  Future<String?> get accessToken async =>
      await _secureStorage.read(key: _accessTokenKey);

  Future<String?> get refreshToken async =>
      await _secureStorage.read(key: _refreshTokenKey);

  Future<Role> role() async {
    // return Role.patient;
    final token = await accessToken;
    if (token == null) throw Exception('No token found');
    String role = JwtDecoder.decode(token)['role'];
    return switch (role) {
      'ROLE_PATIENT' => Role.patient,
      'ROLE_DOCTOR' => Role.doctor,
      _ => throw Exception('Invalid role')
    };
  }
}
