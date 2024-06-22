import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/registration/data/model/sign_in_credential.dart';
import 'package:medica/features/registration/data/model/sign_up_credential.dart';
import 'package:medica/features/registration/data/model/tokens.dart';

import 'package:retrofit/retrofit.dart';

part 'auth_provider.g.dart';

@injectable
@RestApi(baseUrl: 'hms/v1/')
abstract class AuthProvider {
  @factoryMethod
  factory AuthProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
      _AuthProvider;

  @POST('hms/v1/auth/login')
  Future<Tokens> signIn(@Body() SignInCredential signInCredential);

  @POST('hms/v1/auth/register-patient')
  Future<void> signUp(@Body() SignUpCredential signUpCredential);

  @GET('hms/v1/auth/activate/{otp}')
  Future<void> activateAccount(@Path('otp') String otp);


  @POST('hms/v1/auth/refresh-token')
  Future<Tokens> getAccessToken(@Header('Authorization') String refreshToken);

  @POST('hms/v1/auth/logout')
  Future<void> logout();
}
