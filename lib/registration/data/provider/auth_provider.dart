import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/registration/data/model/sign_in_credential.dart';
import 'package:medica/registration/data/model/sign_up_credential.dart';
import 'package:medica/registration/data/model/tokens.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_provider.g.dart';

@injectable
@RestApi()
abstract class AuthProvider {
  @factoryMethod
  factory AuthProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
      _AuthProvider;

  @POST('/auth/login')
  Future<Tokens> signIn(@Body() SignInCredential signInCredential);

  @POST('/auth/register')
  Future<void> signUp(@Body() SignUpCredential signUpCredential);

  @GET('/auth/activate/{otp}')
  Future<void> activateAccount(@Path('otp') String otp);


  @POST('/auth/refresh-token')
  Future<Tokens> getAccessToken(@Header('Authorization') String refreshToken);

  @POST('/auth/logout')
  Future<void> logout();
}
