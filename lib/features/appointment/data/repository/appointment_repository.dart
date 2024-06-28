import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/features/appointment/data/model/doctor_appointment.dart';
import 'package:medica/features/appointment/data/model/patient_appointment.dart';
import 'package:medica/features/appointment/data/provider/appointment_provider.dart';

@injectable
class AppointmentRepository {
  final AppointmentProvider _appointmentProvider;

  AppointmentRepository(this._appointmentProvider);

  Future<ApiResult<void>> createAppointment(
      PatientAppointment appointment) async {
    try {
      await _appointmentProvider.createAppointment(appointment);
      return const ApiResult.success();
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<List<String>>> getAvailableTimeSlots(int doctorId) async {
    try {
      final timeSlots =
          await _appointmentProvider.getAvailableTimeSlots(doctorId);
      return ApiResult.success(data: timeSlots);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<bool>> isAvailable(int doctorId) async {
    try {
      final timeSlots =
          await _appointmentProvider.getAvailableTimeSlots(doctorId);
      return ApiResult.success(data: timeSlots.isNotEmpty);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<List<DoctorAppointment>>> getDoctorAppointment() async {
    try {
      final doctorAppointments =
          await _appointmentProvider.getDoctorAppointments();
      return ApiResult.success(data: doctorAppointments);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<List<PatientAppointment>>> getPatientAppointment() async {
    try {
      final patientAppointments =
          await _appointmentProvider.getPatientAppointments();
      return ApiResult.success(data: patientAppointments);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }
}
