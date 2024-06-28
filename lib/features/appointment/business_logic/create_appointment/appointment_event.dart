import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/appointment/data/model/patient_appointment.dart';

part 'appointment_event.freezed.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.createAppointment(PatientAppointment appointment) =
      CreateAppointment;

  const factory AppointmentEvent.getAvailableTimeSlots(int doctorId) =
      GetAvailableTimeSlots;
}
