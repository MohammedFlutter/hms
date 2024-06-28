import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/appointment/data/model/doctor_appointment.dart';
import 'package:medica/features/appointment/data/model/patient_appointment.dart';
import 'package:retrofit/retrofit.dart';

part 'appointment_provider.g.dart';

@injectable
@RestApi()
abstract class AppointmentProvider {
  @factoryMethod
  factory AppointmentProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
      _AppointmentProvider;

  @POST('api/v1/appointments')
  Future<void> createAppointment(@Body() PatientAppointment appointment);

  @GET('api/v1/doctor/get-available-time/{doctorId}')
  Future<List<String>> getAvailableTimeSlots(@Path('doctorId') int doctorId);

  @GET('api/v1/doctor/appointments')
  Future<List<DoctorAppointment>> getDoctorAppointments();

  @GET('api/v1/patients/appointments')
  Future<List<PatientAppointment>> getPatientAppointments();
}
