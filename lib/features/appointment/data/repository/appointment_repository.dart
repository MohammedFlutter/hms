import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/features/appointment/data/model/appointment.dart';
import 'package:medica/features/appointment/data/provider/appointment_provider.dart';

@injectable
class AppointmentRepository {
  final AppointmentProvider _appointmentProvider;

  AppointmentRepository(this._appointmentProvider);

  Future<ApiResult<void>> createAppointment(Appointment appointment) async {
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
}
