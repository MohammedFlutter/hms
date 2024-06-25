import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/features/patient/data/model/patient.dart';
import 'package:medica/features/patient/data/provider/patient_search_provider.dart';

@injectable
class PatientSearchRepository {
  final PatientSearchProvider _patientSearchProvider;

  PatientSearchRepository(this._patientSearchProvider);

  Future<ApiResult<List<Patient>>> searchPatients(String fullName) async {
    try {
      final patients = await _patientSearchProvider.searchPatients(fullName);
      return ApiResult.success(data: patients);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }
}
