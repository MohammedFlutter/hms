import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/appointment/data/model/doctor_appointment.dart';

part 'doctor_appointment_state.freezed.dart';

@freezed
class DoctorAppointmentState with _$DoctorAppointmentState {
  const factory DoctorAppointmentState({
    @Default('') String errorMessage,
    @Default(null) List<DoctorAppointment>? doctorAppointments,
    @Default(DoctorAppointmentStatus.initial) DoctorAppointmentStatus  status,
  }) = _DoctorAppointmentState;
}

enum DoctorAppointmentStatus {
  initial,
  loading,
  success,
  failure,
}
