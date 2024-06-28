import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_appointment.freezed.dart';

part 'patient_appointment.g.dart';

@freezed
class PatientAppointment with _$PatientAppointment {
  const factory PatientAppointment({
    required String startTime,
    required String reasonForVisit,
    required int doctorId,
    required bool isVirtual,
  }) = _PatientAppointment;

  factory PatientAppointment.fromJson(Map<String, dynamic> json) =>
      _$PatientAppointmentFromJson(json);
}
