import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    // @Default('') String errorMessage,
    @Default(SplashStatus.initial) SplashStatus  status,
  }) = _SplashState;
}

enum SplashStatus {
  initial,
  loading,
  logIn,
  logOut,
  onboarding,
}
