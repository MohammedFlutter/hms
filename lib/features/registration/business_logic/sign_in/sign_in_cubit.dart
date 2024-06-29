import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/registration/data/model/sign_in_credential.dart';
import 'package:medica/features/registration/data/repository/auth_repository.dart';
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
            // getIt<Dio>().interceptors.add(getIt<TokenInterceptor>());

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

  // Future<bool> connectZego() async {
  //   // return true;
  //   final profile = await _profileRepository.getProfile();
  //
  //   return profile.when(
  //     success: (data) {
  //       if (data == null) return false;
  //       ZegoUIKit.instance.init(
  //         appID: Secret.appID,
  //         appSign: Secret.appSign,
  //       );
  //       ZegoUIKitPrebuiltCallInvitationService().init(
  //         appID: 1727910001,
  //         appSign:
  //         '2928cda5778267bc929fa38298d48b88ddab40530ef5702326c94bb3aa9278af',
  //         userID: data.id.toString(),
  //         userName: '${data.firstname} ${data.lastname}',
  //         plugins: [ZegoUIKitSignalingPlugin()],
  //         requireConfig: (ZegoCallInvitationData data) {
  //           final config = (data.invitees.length > 1)
  //               ? ZegoCallInvitationType.videoCall == data.type
  //               ? ZegoUIKitPrebuiltCallConfig.groupVideoCall()
  //               : ZegoUIKitPrebuiltCallConfig.groupVoiceCall()
  //               : ZegoCallInvitationType.videoCall == data.type
  //               ? ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
  //               : ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall();
  //
  //           config.topMenuBar.isVisible = true;
  //           // config.topMenuBar.buttons
  //           //     .insert(0, ZegoCallMenuBarButtonName.minimizingButton);
  //           config.topMenuBar.buttons
  //               .insert(1, ZegoCallMenuBarButtonName.soundEffectButton);
  //
  //           return config;
  //         },
  //       );
  //       return true;
  //     },
  //     failure: (exceptions) {
  //       debugPrint(NetworkExceptions.getErrorMessage(exceptions));
  //       return false;
  //     },
  //   );
  // }
}
