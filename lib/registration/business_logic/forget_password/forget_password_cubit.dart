import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/registration/data/repository/reset_password_repo.dart';

part 'forget_password_state.dart';

part 'forget_password_cubit.freezed.dart';

@injectable
class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this._resetPasswordRepo)
      : super(const ForgetPasswordState.initial());

  final ResetPasswordRepository _resetPasswordRepo;

  void onRequestResetPassword(String email) {
    emit(const ForgetPasswordState.loading());
    _resetPasswordRepo
        .requestResetPassword(email)
        .then((apiResult) => apiResult.when(
              success: (_) async {
                emit(const ForgetPasswordState.success());
              },
              failure: (exception) {
                emit(ForgetPasswordState.failure(
                    NetworkExceptions.getErrorMessage(exception)));
              },
            ));
  }
}
