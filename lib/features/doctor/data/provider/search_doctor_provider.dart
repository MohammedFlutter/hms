import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';
import 'package:retrofit/retrofit.dart';

part 'search_doctor_provider.g.dart';

@injectable
@RestApi(baseUrl: 'api/v1/')
abstract class SearchDoctorProvider {
  @factoryMethod
  factory SearchDoctorProvider(Dio dio, {@Named('baseUrl') String baseUrl}) =
      _SearchDoctorProvider;

  @GET('api/v1/doctor')
  Future<List<Doctor>> searchDoctors({
    @Query('firstname') String? searchQuery,
    @Query('specialty') String? specialization,
  });

  @GET('api/v1/doctor/get-by-id/{id}')
  Future<Doctor> getDoctorsById(
    @Path('id') int id,
  );
}
