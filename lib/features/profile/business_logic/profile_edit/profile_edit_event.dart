// import 'package:equatable/equatable.dart';
// import 'package:medica/features/profile/data/model/profile.dart';
//
// abstract class ProfileEditEvent extends Equatable {
//   const ProfileEditEvent();
//
//   @override
//   List<Object> get props => [];
// }
//
// class UpdateProfile extends ProfileEditEvent {
//   final Profile profile;
//
//   const UpdateProfile(this.profile);
//
//   @override
//   List<Object> get props => [profile];
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/profile/data/model/profile.dart';

part 'profile_edit_event.freezed.dart';

@freezed
class ProfileEditEvent with _$ProfileEditEvent {
  const factory ProfileEditEvent.updateProfile( Profile profile) = UpdateProfile;
}