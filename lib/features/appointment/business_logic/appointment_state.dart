import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_state.freezed.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState({
    @Default([]) List<String> timeSlots,
    @Default('') String errorMessage,
    @Default(AppointmentStateStatus.initial) AppointmentStateStatus status,
  }) = _AppointmentState;
}

enum AppointmentStateStatus {
  initial,
  loading,
  success,
  failure,
  timeSlotsLoaded
}
