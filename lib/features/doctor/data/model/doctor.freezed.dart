// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorDetails _$DoctorDetailsFromJson(Map<String, dynamic> json) {
  return _DoctorDetails.fromJson(json);
}

/// @nodoc
mixin _$DoctorDetails {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'requiredInfoDto')
  BasicInfo get basicInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'additionalInfoDto')
  ProfessionalDetails get professionalDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorDetailsCopyWith<DoctorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorDetailsCopyWith<$Res> {
  factory $DoctorDetailsCopyWith(
          DoctorDetails value, $Res Function(DoctorDetails) then) =
      _$DoctorDetailsCopyWithImpl<$Res, DoctorDetails>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'requiredInfoDto') BasicInfo basicInfo,
      @JsonKey(name: 'additionalInfoDto')
      ProfessionalDetails professionalDetails});

  $BasicInfoCopyWith<$Res> get basicInfo;
  $ProfessionalDetailsCopyWith<$Res> get professionalDetails;
}

/// @nodoc
class _$DoctorDetailsCopyWithImpl<$Res, $Val extends DoctorDetails>
    implements $DoctorDetailsCopyWith<$Res> {
  _$DoctorDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? basicInfo = null,
    Object? professionalDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfo,
      professionalDetails: null == professionalDetails
          ? _value.professionalDetails
          : professionalDetails // ignore: cast_nullable_to_non_nullable
              as ProfessionalDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasicInfoCopyWith<$Res> get basicInfo {
    return $BasicInfoCopyWith<$Res>(_value.basicInfo, (value) {
      return _then(_value.copyWith(basicInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfessionalDetailsCopyWith<$Res> get professionalDetails {
    return $ProfessionalDetailsCopyWith<$Res>(_value.professionalDetails,
        (value) {
      return _then(_value.copyWith(professionalDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorDetailsImplCopyWith<$Res>
    implements $DoctorDetailsCopyWith<$Res> {
  factory _$$DoctorDetailsImplCopyWith(
          _$DoctorDetailsImpl value, $Res Function(_$DoctorDetailsImpl) then) =
      __$$DoctorDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'requiredInfoDto') BasicInfo basicInfo,
      @JsonKey(name: 'additionalInfoDto')
      ProfessionalDetails professionalDetails});

  @override
  $BasicInfoCopyWith<$Res> get basicInfo;
  @override
  $ProfessionalDetailsCopyWith<$Res> get professionalDetails;
}

/// @nodoc
class __$$DoctorDetailsImplCopyWithImpl<$Res>
    extends _$DoctorDetailsCopyWithImpl<$Res, _$DoctorDetailsImpl>
    implements _$$DoctorDetailsImplCopyWith<$Res> {
  __$$DoctorDetailsImplCopyWithImpl(
      _$DoctorDetailsImpl _value, $Res Function(_$DoctorDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? basicInfo = null,
    Object? professionalDetails = null,
  }) {
    return _then(_$DoctorDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfo,
      professionalDetails: null == professionalDetails
          ? _value.professionalDetails
          : professionalDetails // ignore: cast_nullable_to_non_nullable
              as ProfessionalDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorDetailsImpl implements _DoctorDetails {
  const _$DoctorDetailsImpl(
      {required this.id,
      @JsonKey(name: 'requiredInfoDto') required this.basicInfo,
      @JsonKey(name: 'additionalInfoDto') required this.professionalDetails});

  factory _$DoctorDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorDetailsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'requiredInfoDto')
  final BasicInfo basicInfo;
  @override
  @JsonKey(name: 'additionalInfoDto')
  final ProfessionalDetails professionalDetails;

  @override
  String toString() {
    return 'DoctorDetails(id: $id, basicInfo: $basicInfo, professionalDetails: $professionalDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.professionalDetails, professionalDetails) ||
                other.professionalDetails == professionalDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, basicInfo, professionalDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorDetailsImplCopyWith<_$DoctorDetailsImpl> get copyWith =>
      __$$DoctorDetailsImplCopyWithImpl<_$DoctorDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorDetailsImplToJson(
      this,
    );
  }
}

abstract class _DoctorDetails implements DoctorDetails {
  const factory _DoctorDetails(
          {required final int id,
          @JsonKey(name: 'requiredInfoDto') required final BasicInfo basicInfo,
          @JsonKey(name: 'additionalInfoDto')
          required final ProfessionalDetails professionalDetails}) =
      _$DoctorDetailsImpl;

  factory _DoctorDetails.fromJson(Map<String, dynamic> json) =
      _$DoctorDetailsImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'requiredInfoDto')
  BasicInfo get basicInfo;
  @override
  @JsonKey(name: 'additionalInfoDto')
  ProfessionalDetails get professionalDetails;
  @override
  @JsonKey(ignore: true)
  _$$DoctorDetailsImplCopyWith<_$DoctorDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BasicInfo _$BasicInfoFromJson(Map<String, dynamic> json) {
  return _BasicInfo.fromJson(json);
}

/// @nodoc
mixin _$BasicInfo {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get gender =>
      throw _privateConstructorUsedError; // required String dob,
  String get address => throw _privateConstructorUsedError;
  String get phone =>
      throw _privateConstructorUsedError; // required String email,
// required String password,
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicInfoCopyWith<BasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoCopyWith<$Res> {
  factory $BasicInfoCopyWith(BasicInfo value, $Res Function(BasicInfo) then) =
      _$BasicInfoCopyWithImpl<$Res, BasicInfo>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String gender,
      String address,
      String phone,
      @JsonKey(name: 'is_enabled') bool isEnabled});
}

/// @nodoc
class _$BasicInfoCopyWithImpl<$Res, $Val extends BasicInfo>
    implements $BasicInfoCopyWith<$Res> {
  _$BasicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? gender = null,
    Object? address = null,
    Object? phone = null,
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicInfoImplCopyWith<$Res>
    implements $BasicInfoCopyWith<$Res> {
  factory _$$BasicInfoImplCopyWith(
          _$BasicInfoImpl value, $Res Function(_$BasicInfoImpl) then) =
      __$$BasicInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String gender,
      String address,
      String phone,
      @JsonKey(name: 'is_enabled') bool isEnabled});
}

/// @nodoc
class __$$BasicInfoImplCopyWithImpl<$Res>
    extends _$BasicInfoCopyWithImpl<$Res, _$BasicInfoImpl>
    implements _$$BasicInfoImplCopyWith<$Res> {
  __$$BasicInfoImplCopyWithImpl(
      _$BasicInfoImpl _value, $Res Function(_$BasicInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? gender = null,
    Object? address = null,
    Object? phone = null,
    Object? isEnabled = null,
  }) {
    return _then(_$BasicInfoImpl(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicInfoImpl implements _BasicInfo {
  const _$BasicInfoImpl(
      {required this.firstname,
      required this.lastname,
      required this.gender,
      required this.address,
      required this.phone,
      @JsonKey(name: 'is_enabled') required this.isEnabled});

  factory _$BasicInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicInfoImplFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String gender;
// required String dob,
  @override
  final String address;
  @override
  final String phone;
// required String email,
// required String password,
  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;

  @override
  String toString() {
    return 'BasicInfo(firstname: $firstname, lastname: $lastname, gender: $gender, address: $address, phone: $phone, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicInfoImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstname, lastname, gender, address, phone, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicInfoImplCopyWith<_$BasicInfoImpl> get copyWith =>
      __$$BasicInfoImplCopyWithImpl<_$BasicInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicInfoImplToJson(
      this,
    );
  }
}

abstract class _BasicInfo implements BasicInfo {
  const factory _BasicInfo(
          {required final String firstname,
          required final String lastname,
          required final String gender,
          required final String address,
          required final String phone,
          @JsonKey(name: 'is_enabled') required final bool isEnabled}) =
      _$BasicInfoImpl;

  factory _BasicInfo.fromJson(Map<String, dynamic> json) =
      _$BasicInfoImpl.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get gender;
  @override // required String dob,
  String get address;
  @override
  String get phone;
  @override // required String email,
// required String password,
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$BasicInfoImplCopyWith<_$BasicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfessionalDetails _$ProfessionalDetailsFromJson(Map<String, dynamic> json) {
  return _ProfessionalDetails.fromJson(json);
}

/// @nodoc
mixin _$ProfessionalDetails {
  String? get education => throw _privateConstructorUsedError;
  String? get certifications => throw _privateConstructorUsedError;
  String? get experience => throw _privateConstructorUsedError;
  bool? get activeStatus => throw _privateConstructorUsedError;
  String? get specialty => throw _privateConstructorUsedError;
  String? get licenseNumber => throw _privateConstructorUsedError;
  String? get workStartTime => throw _privateConstructorUsedError;
  String? get workEndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfessionalDetailsCopyWith<ProfessionalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionalDetailsCopyWith<$Res> {
  factory $ProfessionalDetailsCopyWith(
          ProfessionalDetails value, $Res Function(ProfessionalDetails) then) =
      _$ProfessionalDetailsCopyWithImpl<$Res, ProfessionalDetails>;
  @useResult
  $Res call(
      {String? education,
      String? certifications,
      String? experience,
      bool? activeStatus,
      String? specialty,
      String? licenseNumber,
      String? workStartTime,
      String? workEndTime});
}

/// @nodoc
class _$ProfessionalDetailsCopyWithImpl<$Res, $Val extends ProfessionalDetails>
    implements $ProfessionalDetailsCopyWith<$Res> {
  _$ProfessionalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? education = freezed,
    Object? certifications = freezed,
    Object? experience = freezed,
    Object? activeStatus = freezed,
    Object? specialty = freezed,
    Object? licenseNumber = freezed,
    Object? workStartTime = freezed,
    Object? workEndTime = freezed,
  }) {
    return _then(_value.copyWith(
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      certifications: freezed == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      activeStatus: freezed == activeStatus
          ? _value.activeStatus
          : activeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      specialty: freezed == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      workStartTime: freezed == workStartTime
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      workEndTime: freezed == workEndTime
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfessionalDetailsImplCopyWith<$Res>
    implements $ProfessionalDetailsCopyWith<$Res> {
  factory _$$ProfessionalDetailsImplCopyWith(_$ProfessionalDetailsImpl value,
          $Res Function(_$ProfessionalDetailsImpl) then) =
      __$$ProfessionalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? education,
      String? certifications,
      String? experience,
      bool? activeStatus,
      String? specialty,
      String? licenseNumber,
      String? workStartTime,
      String? workEndTime});
}

/// @nodoc
class __$$ProfessionalDetailsImplCopyWithImpl<$Res>
    extends _$ProfessionalDetailsCopyWithImpl<$Res, _$ProfessionalDetailsImpl>
    implements _$$ProfessionalDetailsImplCopyWith<$Res> {
  __$$ProfessionalDetailsImplCopyWithImpl(_$ProfessionalDetailsImpl _value,
      $Res Function(_$ProfessionalDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? education = freezed,
    Object? certifications = freezed,
    Object? experience = freezed,
    Object? activeStatus = freezed,
    Object? specialty = freezed,
    Object? licenseNumber = freezed,
    Object? workStartTime = freezed,
    Object? workEndTime = freezed,
  }) {
    return _then(_$ProfessionalDetailsImpl(
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      certifications: freezed == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      activeStatus: freezed == activeStatus
          ? _value.activeStatus
          : activeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      specialty: freezed == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      workStartTime: freezed == workStartTime
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      workEndTime: freezed == workEndTime
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfessionalDetailsImpl implements _ProfessionalDetails {
  const _$ProfessionalDetailsImpl(
      {this.education,
      this.certifications,
      this.experience,
      this.activeStatus,
      this.specialty,
      this.licenseNumber,
      this.workStartTime,
      this.workEndTime});

  factory _$ProfessionalDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfessionalDetailsImplFromJson(json);

  @override
  final String? education;
  @override
  final String? certifications;
  @override
  final String? experience;
  @override
  final bool? activeStatus;
  @override
  final String? specialty;
  @override
  final String? licenseNumber;
  @override
  final String? workStartTime;
  @override
  final String? workEndTime;

  @override
  String toString() {
    return 'ProfessionalDetails(education: $education, certifications: $certifications, experience: $experience, activeStatus: $activeStatus, specialty: $specialty, licenseNumber: $licenseNumber, workStartTime: $workStartTime, workEndTime: $workEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessionalDetailsImpl &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.certifications, certifications) ||
                other.certifications == certifications) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.activeStatus, activeStatus) ||
                other.activeStatus == activeStatus) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.workStartTime, workStartTime) ||
                other.workStartTime == workStartTime) &&
            (identical(other.workEndTime, workEndTime) ||
                other.workEndTime == workEndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      education,
      certifications,
      experience,
      activeStatus,
      specialty,
      licenseNumber,
      workStartTime,
      workEndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessionalDetailsImplCopyWith<_$ProfessionalDetailsImpl> get copyWith =>
      __$$ProfessionalDetailsImplCopyWithImpl<_$ProfessionalDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfessionalDetailsImplToJson(
      this,
    );
  }
}

abstract class _ProfessionalDetails implements ProfessionalDetails {
  const factory _ProfessionalDetails(
      {final String? education,
      final String? certifications,
      final String? experience,
      final bool? activeStatus,
      final String? specialty,
      final String? licenseNumber,
      final String? workStartTime,
      final String? workEndTime}) = _$ProfessionalDetailsImpl;

  factory _ProfessionalDetails.fromJson(Map<String, dynamic> json) =
      _$ProfessionalDetailsImpl.fromJson;

  @override
  String? get education;
  @override
  String? get certifications;
  @override
  String? get experience;
  @override
  bool? get activeStatus;
  @override
  String? get specialty;
  @override
  String? get licenseNumber;
  @override
  String? get workStartTime;
  @override
  String? get workEndTime;
  @override
  @JsonKey(ignore: true)
  _$$ProfessionalDetailsImplCopyWith<_$ProfessionalDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
