import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_appointment_event.freezed.dart';

@freezed
class PatientAppointmentEvent with _$PatientAppointmentEvent {
  const factory PatientAppointmentEvent.loadAppointment() =LoadAppointment;
}
