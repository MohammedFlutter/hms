import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/appointment/data/model/appointment.dart';

part 'appointment_event.freezed.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.createAppointment(Appointment appointment) =
      CreateAppointment;
}
