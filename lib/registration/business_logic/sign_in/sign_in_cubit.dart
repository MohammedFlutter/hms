import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/registration/data/model/sign_in_credential.dart';
import 'package:medica/registration/data/repository/auth_repository.dart';

part 'sign_in_state.dart';

part 'sign_in_cubit.freezed.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this._authRepository) : super(const SignInState.initial());
  final AuthRepository _authRepository;

  void onSignIn(SignInCredential signInCredential) {
    emit(const SignInState.loading());
    _authRepository.signIn(signInCredential).then((apiResult) => apiResult.when(
          success: (tokens) async {
            await _authRepository.storeTokens(tokens!);
            emit(const SignInState.success());
          },
          failure: (exception) {
            exception.maybeWhen(orElse: () {
            emit(SignInState.failure(
                NetworkExceptions.getErrorMessage(exception)));

            },unauthorizedRequest: (reason) {
              emit(const SignInState.failure('email or password are wrong'));
            },
            );
          },
        ));
  }
}
