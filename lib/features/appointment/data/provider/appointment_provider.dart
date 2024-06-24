import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/appointment/data/model/appointment.dart';
import 'package:retrofit/retrofit.dart';

part 'appointment_provider.g.dart';

@injectable
@RestApi()
abstract class AppointmentProvider {
  @factoryMethod
  factory AppointmentProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
      _AppointmentProvider;

  @POST('api/v1/appointments')
  Future<void> createAppointment(@Body() Appointment appointment);

  @GET('api/v1/doctor/get-available-time/{doctorId}')
  Future<List<String>> getAvailableTimeSlots(@Path('doctorId') int doctorId);
}
