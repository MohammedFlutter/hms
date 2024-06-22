import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/registration/data/model/reset_password.dart';
import 'package:medica/features/registration/data/repository/reset_password_repo.dart';

part 'reset_password_state.dart';

part 'reset_password_cubit.freezed.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._resetPasswordRepo)
      : super(const ResetPasswordState.initial());
  final ResetPasswordRepository _resetPasswordRepo;

  void onResetPassword(ResetPassword resetPassword) {
    emit(const ResetPasswordState.loading());

    _resetPasswordRepo
        .resetPassword(resetPassword)
        .then((apiResult) => apiResult.when(success: (_) async {
              emit(const ResetPasswordState.success());
            }, failure: (exception) {
              emit(ResetPasswordState.failure(
                  NetworkExceptions.getErrorMessage(exception)));
            }));
  }
}
