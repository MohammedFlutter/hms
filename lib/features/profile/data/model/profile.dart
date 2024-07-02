import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    int? id,
    required String firstname,
    required String lastname,
    String? dob,
    String? gender,
    String? phone,
    String? address,
    required String email,
    String? roles,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
