import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/profile/data/model/profile.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_provider.g.dart';

@injectable
@RestApi()
abstract class ProfileProvider {

  @factoryMethod
  factory ProfileProvider(Dio dio, {@Named('baseUrl') String baseUrl}) = _ProfileProvider;

  @GET('api/v1/user')
  Future<Profile> getProfile();
}