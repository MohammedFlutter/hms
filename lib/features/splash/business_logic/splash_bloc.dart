import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/const/secret.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/injection/api_module.dart';
import 'package:medica/core/injection/init_di.dart';
import 'package:medica/features/onboarding/onboarding_repo.dart';
import 'package:medica/features/splash/business_logic/splash_event.dart';
import 'package:medica/features/splash/business_logic/splash_state.dart';
import 'package:medica/features/registration/data/repository/auth_repository.dart';
import 'package:medica/features/profile/data/repository/profile_repository.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AuthRepository _authRepository;
  final ProfileRepository _profileRepository;

  SplashBloc(this._authRepository, this._profileRepository)
      : super(const SplashState()) {
    on<SplashInitial>((event, emit) async {
      emit(state.copyWith(status: SplashStatus.loading));

      final isFirstTimeLaunch = getIt<OnboardingRepo>().isFirstTimeLaunch();
      if (isFirstTimeLaunch) {
        emit(state.copyWith(status: SplashStatus.onboarding));
        return;
      }

      final isLoggedIn = await _authRepository.isLoggedIn();

      if (!isLoggedIn) {
        emit(state.copyWith(status: SplashStatus.logOut));
      } else {
        getIt<Dio>().interceptors.add(getIt<TokenInterceptor>());
        final isConnected = await connectZego();
        if (isConnected) {
          emit(state.copyWith(status: SplashStatus.logIn));
        } else {
          emit(state.copyWith(status: SplashStatus.logOut));
        }
      }
    });
  }

  Future<bool> connectZego() async {
    // return true;
    final profile = await _profileRepository.getProfile();

    return profile.when(
      success: (data) {
        if (data == null) return false;
        // ZegoUIKit.instance.init(
        //   appID: Secret.appID,
        //   appSign: Secret.appSign,
        // );
        ZegoUIKitPrebuiltCallInvitationService().init(
          appID: Secret.appID,
          appSign: Secret.appSign,
          userID: data.id.toString(),
          userName: '${data.firstname} ${data.lastname}',
          plugins: [ZegoUIKitSignalingPlugin()],
          // notificationConfig: ZegoCallInvitationNotificationConfig(androidNotificationConfig:ZegoCallAndroidNotificationConfig(vibrate: true,callIDVisibility: ) ),
          requireConfig: (ZegoCallInvitationData data) {
            final config = (data.invitees.length > 1)
                ? ZegoCallInvitationType.videoCall == data.type
                    ? ZegoUIKitPrebuiltCallConfig.groupVideoCall()
                    : ZegoUIKitPrebuiltCallConfig.groupVoiceCall()
                : ZegoCallInvitationType.videoCall == data.type
                    ? ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
                    : ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall();

            config.topMenuBar.isVisible = true;
            config.topMenuBar.buttons
                .insert(0, ZegoCallMenuBarButtonName.minimizingButton);
            config.topMenuBar.buttons
                .insert(1, ZegoCallMenuBarButtonName.soundEffectButton);

            return config;
          },
        );
        return true;
      },
      failure: (exceptions) {
        debugPrint(NetworkExceptions.getErrorMessage(exceptions));
        return false;
      },
    );
  }
}
