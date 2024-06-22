import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';
import 'package:medica/features/doctor/data/provider/search_doctor_provider.dart';

@injectable
class SearchDoctorRepository {
  final SearchDoctorProvider _searchDoctorProvider;

  SearchDoctorRepository({required SearchDoctorProvider searchDoctorProvider})
      : _searchDoctorProvider = searchDoctorProvider;

  Future<ApiResult<List<DoctorDetails>>> searchDoctor(
      {String? searchQuery, String? specialization}) async {
    try {
      final doctors = await _searchDoctorProvider.searchDoctors(
          searchQuery: searchQuery, specialization: specialization);
      return ApiResult.success(data: doctors);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
