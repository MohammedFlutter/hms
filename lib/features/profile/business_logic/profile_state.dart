import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/profile/data/model/profile.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.success(Profile profile) = Success;
  const factory ProfileState.logoutSuccess() = LogoutSuccess;
  const factory ProfileState.failure(String error) = Failure;
}