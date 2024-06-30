import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/core/enums/role.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    // @Default('') String errorMessage,
     Role? role,
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
