import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/features/appointment/business_logic/DTO/doctor_appointment_dto.dart';
import 'package:medica/features/appointment/business_logic/DTO/patient_appointment_dto.dart';
import 'package:medica/features/appointment/data/provider/appointment_provider.dart';
import 'package:medica/features/doctor/data/provider/search_doctor_provider.dart';
import 'package:medica/features/patient/data/provider/patient_search_provider.dart';

@injectable
class AppointmentsService {
  final AppointmentProvider _appointmentProvider;
  final PatientSearchProvider _patientProvider;
  final SearchDoctorProvider _doctorProvider;

  AppointmentsService(this._appointmentProvider,
      {required AppointmentProvider patientAppointmentProvider,
      required PatientSearchProvider patientProvider,
      required SearchDoctorProvider doctorProvider})
      : _patientProvider = patientProvider,
        _doctorProvider = doctorProvider;

  Future<ApiResult<List<PatientAppointmentDto>>>
      getPatientAppointments() async {
    try {
//todo remove duplicated element
      final appointments = await _appointmentProvider.getPatientAppointments();

      final doctorNames = await Future.wait(
        appointments
            .map((appointment) =>
                _doctorProvider.getDoctorsById(appointment.doctorId))
            .toList(),
      );
      final doctorNameList = doctorNames
          .map((doctor) =>
              '${doctor.basicInfo.firstname} ${doctor.basicInfo.lastname}')
          .toList(); // Extract names

      final dtos = appointments
          .map((appointment) => PatientAppointmentDto.fromPatientAppointment(
                appointment,
                doctorNameList[appointments.indexOf(appointment)],
              ))
          .toList();

      return ApiResult.success(data: dtos);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<List<DoctorAppointmentDto>>> getDoctorAppointments() async {
    try {
      final appointments = await _appointmentProvider.getDoctorAppointments();
      final patientNames = await Future.wait(
        appointments
            .map((appointment) =>
                _patientProvider.getPatientById(appointment.patientId))
            .toList(),
      );
      final patientNameList = patientNames
          .map((patient) =>
              '${patient.basicInfo.firstname} ${patient.basicInfo.lastname}')
          .toList(); // Extract names

      final dtos = appointments
          .map((appointment) => DoctorAppointmentDto.fromPatientAppointment(
                appointment,
                patientNameList[appointments.indexOf(appointment)],
              ))
          .toList();

      return ApiResult.success(data: dtos);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }
}
