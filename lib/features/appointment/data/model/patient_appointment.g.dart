// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientAppointmentImpl _$$PatientAppointmentImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientAppointmentImpl(
      startTime: json['startTime'] as String,
      reasonForVisit: json['reasonForVisit'] as String,
      doctorId: (json['doctorId'] as num).toInt(),
      virtual: json['virtual'] as bool? ?? false,
    );

Map<String, dynamic> _$$PatientAppointmentImplToJson(
        _$PatientAppointmentImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'reasonForVisit': instance.reasonForVisit,
      'doctorId': instance.doctorId,
      'virtual': instance.virtual,
    };
