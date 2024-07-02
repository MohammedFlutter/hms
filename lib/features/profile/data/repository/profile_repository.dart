import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/core/helper/api_result.dart';
import 'package:medica/features/profile/data/model/profile.dart';
import 'package:medica/features/profile/data/provider/profile_provider.dart';

@injectable
class ProfileRepository {
  final ProfileProvider _profileProvider;

  ProfileRepository(this._profileProvider);

  Future<ApiResult<Profile>> getProfile() async {
    try {
      final profile = await _profileProvider.getProfile();
      return ApiResult.success(data: profile);
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }
  Future<ApiResult<Profile>> updateProfile(Profile profile) async {
    try {
       await _profileProvider.updateProfile(profile);
      return const ApiResult.success();
    } catch (e) {
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }
}
