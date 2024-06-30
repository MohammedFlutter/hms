import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_doctor_state.freezed.dart';

@freezed
class HomeDoctorState with _$HomeDoctorState {
  const factory HomeDoctorState({
    @Default('') String errorMessage,
    @Default('') String firstname,
    @Default(HomeDoctorStatus.initial) HomeDoctorStatus status,
  }) = _HomeDoctorState;
}

enum HomeDoctorStatus {
  initial,
  loading,
  success,
  failure,
}
