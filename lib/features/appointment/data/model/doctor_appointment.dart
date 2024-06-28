import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_appointment.freezed.dart';

part 'doctor_appointment.g.dart';

@freezed
class DoctorAppointment with _$DoctorAppointment {
  const factory DoctorAppointment({
    required String startTime,
    required String reasonForVisit,
    required int patientId,
    required bool? isVirtual,
  }) = _DoctorAppointment;

  factory DoctorAppointment.fromJson(Map<String, dynamic> json) =>
      _$DoctorAppointmentFromJson(json);
}
