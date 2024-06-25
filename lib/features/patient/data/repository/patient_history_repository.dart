import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/features/patient/data/model/patient_history.dart';
import 'package:medica/features/patient/data/provider/patient_history_provider.dart';

@injectable
class PatientHistoryRepository {
  final PatientHistoryProvider _patientHistoryProvider;

  PatientHistoryRepository(this._patientHistoryProvider);

  Future<ApiResult<PatientHistory>> getPatientHistory(int patientId) async {
    try {
      final patientHistory =
          await _patientHistoryProvider.getPatientHistory(patientId);
      return ApiResult.success(data: patientHistory);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }
}
