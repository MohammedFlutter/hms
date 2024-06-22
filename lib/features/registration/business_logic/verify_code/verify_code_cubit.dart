
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/registration/data/repository/auth_repository.dart';
import 'package:medica/features/registration/data/repository/reset_password_repo.dart';

part 'verify_code_state.dart';

part 'verify_code_cubit.freezed.dart';

@injectable
class VerifyCodeCubit extends Cubit<VerifyCodeState> {
  VerifyCodeCubit(this._resetPasswordRepo, this._authRepository)
      : super(const VerifyCodeState.initial());
  final ResetPasswordRepository _resetPasswordRepo;
  final AuthRepository _authRepository;

  void onVerifyCode(String otp) {
    emit(const VerifyCodeState.loading());
    _resetPasswordRepo
        .verifyResetPasswordOtp(otp)
        .then((apiResult) => apiResult.when(
              success: (_) async {
                emit(const VerifyCodeState.success());
              },
              failure: (exception) {
                emit(VerifyCodeState.failure(
                    NetworkExceptions.getErrorMessage(exception)));
              },
            ));
  }

  void onResentOtp(String email) {
    emit(const VerifyCodeState.loading());
    _resetPasswordRepo
        .requestResetPassword(email)
        .then((apiResult) => apiResult.when(
              success: (_) async {
                emit(const VerifyCodeState.loaded());
              },
              failure: (exception) {
                emit(VerifyCodeState.failure(
                    NetworkExceptions.getErrorMessage(exception)));
              },
            ));
  }

  void onActivateAccount(String otp) {
    emit(const VerifyCodeState.loading());
    _authRepository.activateAccount(otp).then((apiResult) => apiResult.when(
          success: (_) async {
            emit(const VerifyCodeState.success());
          },
          failure: (exception) {
            emit(VerifyCodeState.failure(
                NetworkExceptions.getErrorMessage(exception)));
          },
        ));
  }
}
