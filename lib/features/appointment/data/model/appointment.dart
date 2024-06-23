import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';

part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String startTime, // Changed to String
    required String reasonForVisit,
    required int doctorId,
    required bool isVirtual,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}
