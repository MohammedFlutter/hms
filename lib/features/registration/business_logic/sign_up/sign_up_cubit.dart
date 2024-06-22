import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/registration/data/model/sign_up_credential.dart';
import 'package:medica/features/registration/data/repository/auth_repository.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._authRepository) : super(const SignUpState.initial());
  final AuthRepository _authRepository;

  void onSignIn(SignUpCredential signUpCredential) {
    emit(const SignUpState.loading());
    _authRepository.signUp(signUpCredential).then((apiResult) => apiResult.when(
          success: (_) async {
            emit(const SignUpState.success());
          },
          failure: (exception) {
            emit(SignUpState.failure(
                NetworkExceptions.getErrorMessage(exception)));
          },
        ));
  }
}
