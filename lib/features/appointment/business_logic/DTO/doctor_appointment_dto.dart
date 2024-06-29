import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/appointment/data/model/doctor_appointment.dart';

part 'doctor_appointment_dto.freezed.dart';
// part 'doctor_appointment_dto.g.dart';

@freezed
class DoctorAppointmentDto with _$DoctorAppointmentDto{
    const factory DoctorAppointmentDto ({
        required String startTime,
        required String reasonForVisit,
        required int patientId,
        required bool isVirtual,
        required String patientName,
    })=_DoctorAppointmentDto;
    // factory DoctorAppointmentDto.fromJson(Map<String,dynamic> json)=>_$DoctorAppointmentDtoFromJson(json);

factory DoctorAppointmentDto.fromPatientAppointment(
      DoctorAppointment appointment, String patientName) {
    return DoctorAppointmentDto(
      startTime: appointment.startTime,
      reasonForVisit: appointment.reasonForVisit,
      patientId: appointment.patientId,
      isVirtual: appointment.virtual,
      patientName: patientName,
    );
  }
}

