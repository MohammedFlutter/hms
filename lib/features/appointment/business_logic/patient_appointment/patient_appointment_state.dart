import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/appointment/data/model/patient_appointment.dart';

part 'patient_appointment_state.freezed.dart';

@freezed
class PatientAppointmentState with _$PatientAppointmentState {
  const factory PatientAppointmentState({
    @Default('') String errorMessage,
    @Default(null) List<PatientAppointment>? patientAppointments,
    @Default(PatientAppointmentStatus.initial) PatientAppointmentStatus  status,
  }) = _PatientAppointmentState;
}

enum PatientAppointmentStatus {
  initial,
  loading,
  success,
  failure,
}
