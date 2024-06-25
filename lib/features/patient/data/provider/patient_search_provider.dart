import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/patient/data/model/patient.dart'; // Assuming your Patient model is in this path
import 'package:retrofit/retrofit.dart';

part 'patient_search_provider.g.dart';

@RestApi()
@injectable
abstract class PatientSearchProvider {
  @factoryMethod
  factory PatientSearchProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
  _PatientSearchProvider;

  @GET('/api/v1/patients/search-full-name')
  Future<List<Patient>> searchPatients(@Query('fullName') String fullName);
}