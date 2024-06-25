import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/patient/data/model/patient_history.dart';
import 'package:retrofit/http.dart';

part 'patient_history_provider.g.dart';

@RestApi()
@injectable
abstract class PatientHistoryProvider {
  @factoryMethod
  factory PatientHistoryProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
      _PatientHistoryProvider;

  @GET(
      'api/vi/patient-history/get_by-patient-id/{patientId}')
  Future<PatientHistory> getPatientHistory(@Path('patientId') int patientId);
}
