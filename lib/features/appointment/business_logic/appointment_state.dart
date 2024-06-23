import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_state.freezed.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = Initial;
  const factory AppointmentState.loading() = Loading;
  const factory AppointmentState.success() = Success;
  const factory AppointmentState.failure(String error) = Failure;
}