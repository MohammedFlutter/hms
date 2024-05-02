part of 'verify_code_cubit.dart';

@freezed
class VerifyCodeState with _$VerifyCodeState {
  const factory VerifyCodeState.initial() = _Initial;
  const factory VerifyCodeState.loading() = _Loading;
  const factory VerifyCodeState.loaded() = _Loaded;

  const factory VerifyCodeState.success() = _Success;
  const factory VerifyCodeState.failure(String message) = _Failure;
}
