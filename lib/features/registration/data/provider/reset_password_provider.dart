import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/registration/data/model/reset_password.dart';
import 'package:retrofit/retrofit.dart';

part 'reset_password_provider.g.dart';


@injectable
@RestApi(baseUrl: 'hms/v1/')
abstract class ResetPasswordProvider {
  @factoryMethod
  factory ResetPasswordProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
  _ResetPasswordProvider;

  @POST('hms/v1/auth/password/reset/request?email={email}')
  Future<void> requestResetPassword(@Path('email') String email);

  @GET('hms/v1/auth/verify-otp/{otp}')
  Future<void> verifyResetPasswordOtp(@Path('otp') String otp);

  @POST('hms/v1/auth/password/reset/verify')
  Future<void> resetPassword(@Body() ResetPassword resetPassword);



}