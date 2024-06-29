import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/appointment/data/model/patient_appointment.dart';

part 'patient_appointment_dto.freezed.dart';
// part 'patient_appointment_dto.g.dart';

@freezed
 class PatientAppointmentDto with _$PatientAppointmentDto{


    const factory PatientAppointmentDto ({
      required String startTime,
      required String reasonForVisit,
      required int doctorId,
      required bool isVirtual,
      required String doctorName,
    })=_PatientAppointmentDto;

    factory PatientAppointmentDto.fromPatientAppointment(
        PatientAppointment appointment, String doctorName) {
      return PatientAppointmentDto(
        startTime: appointment.startTime,
        reasonForVisit: appointment.reasonForVisit,
        doctorId: appointment.doctorId,
        isVirtual: appointment.virtual,
        doctorName: doctorName,
      );
    }
    // factory PatientAppointmentDto.fromJson(Map<String,dynamic> json)=>_$PatientAppointmentDtoFromJson(json);

}

//