import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/registration/data/model/reset_password.dart';
import 'package:retrofit/retrofit.dart';

part 'reset_password_provider.g.dart';


@injectable
@RestApi()
abstract class ResetPasswordProvider {
  @factoryMethod
  factory ResetPasswordProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
  _ResetPasswordProvider;

  @POST('auth/password/reset/request?email={email}')
  Future<void> requestResetPassword(@Path('email') String email);

  @GET('auth/verify-otp/{otp}')
  Future<void> verifyResetPasswordOtp(@Path('otp') String otp);

  @POST('auth/password/reset/verify')
  Future<void> resetPassword(@Body() ResetPassword resetPassword);



}