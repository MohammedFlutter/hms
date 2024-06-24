import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required int id,
    required String firstname,
    required String lastname,
    String? gender,
    String? phone,
    required String email,
    required String roles,
    // required bool isEnabled, // Changed to isEnabled (camelCase)
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}