import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_appointment_event.freezed.dart';

@freezed
class DoctorAppointmentEvent with _$DoctorAppointmentEvent {
  const factory DoctorAppointmentEvent.loadAppointment() =LoadAppointment ;
}
