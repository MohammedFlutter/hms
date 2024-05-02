import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/registration/data/model/reset_password.dart';
import 'package:medica/registration/data/provider/reset_password_provider.dart';

@injectable
class ResetPasswordRepository {
  ResetPasswordRepository({required ResetPasswordProvider resetPasswordProvider})
      : _resetPasswordProvider = resetPasswordProvider;

  final ResetPasswordProvider _resetPasswordProvider;

  Future<ApiResult<void>> requestResetPassword(String email) async {
    try {
      await _resetPasswordProvider.requestResetPassword(email);

      return const ApiResult.success();
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<void>> verifyResetPasswordOtp(String otp) async {
    try {
      await _resetPasswordProvider.verifyResetPasswordOtp(otp);

      return const ApiResult.success();
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<void>> resetPassword(ResetPassword resetPassword) async {
    try {
      await _resetPasswordProvider.resetPassword(resetPassword);

      return const ApiResult.success();
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }
}
