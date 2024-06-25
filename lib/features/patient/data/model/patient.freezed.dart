// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'requiredInfoDto')
  BasicInfo get basicInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'additionalInfoDto')
  ExtraInfo? get extraInfo =>
      throw _privateConstructorUsedError; // Now nullable
  int? get patientHistoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'requiredInfoDto') BasicInfo basicInfo,
      @JsonKey(name: 'additionalInfoDto') ExtraInfo? extraInfo,
      int? patientHistoryId});

  $BasicInfoCopyWith<$Res> get basicInfo;
  $ExtraInfoCopyWith<$Res>? get extraInfo;
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? basicInfo = null,
    Object? extraInfo = freezed,
    Object? patientHistoryId = freezed,
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
      extraInfo: freezed == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as ExtraInfo?,
      patientHistoryId: freezed == patientHistoryId
          ? _value.patientHistoryId
          : patientHistoryId // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $ExtraInfoCopyWith<$Res>? get extraInfo {
    if (_value.extraInfo == null) {
      return null;
    }

    return $ExtraInfoCopyWith<$Res>(_value.extraInfo!, (value) {
      return _then(_value.copyWith(extraInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'requiredInfoDto') BasicInfo basicInfo,
      @JsonKey(name: 'additionalInfoDto') ExtraInfo? extraInfo,
      int? patientHistoryId});

  @override
  $BasicInfoCopyWith<$Res> get basicInfo;
  @override
  $ExtraInfoCopyWith<$Res>? get extraInfo;
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? basicInfo = null,
    Object? extraInfo = freezed,
    Object? patientHistoryId = freezed,
  }) {
    return _then(_$PatientImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfo,
      extraInfo: freezed == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as ExtraInfo?,
      patientHistoryId: freezed == patientHistoryId
          ? _value.patientHistoryId
          : patientHistoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl implements _Patient {
  const _$PatientImpl(
      {required this.id,
      @JsonKey(name: 'requiredInfoDto') required this.basicInfo,
      @JsonKey(name: 'additionalInfoDto') this.extraInfo,
      this.patientHistoryId});

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'requiredInfoDto')
  final BasicInfo basicInfo;
  @override
  @JsonKey(name: 'additionalInfoDto')
  final ExtraInfo? extraInfo;
// Now nullable
  @override
  final int? patientHistoryId;

  @override
  String toString() {
    return 'Patient(id: $id, basicInfo: $basicInfo, extraInfo: $extraInfo, patientHistoryId: $patientHistoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo) &&
            (identical(other.patientHistoryId, patientHistoryId) ||
                other.patientHistoryId == patientHistoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, basicInfo, extraInfo, patientHistoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
      {required final int id,
      @JsonKey(name: 'requiredInfoDto') required final BasicInfo basicInfo,
      @JsonKey(name: 'additionalInfoDto') final ExtraInfo? extraInfo,
      final int? patientHistoryId}) = _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'requiredInfoDto')
  BasicInfo get basicInfo;
  @override
  @JsonKey(name: 'additionalInfoDto')
  ExtraInfo? get extraInfo;
  @override // Now nullable
  int? get patientHistoryId;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BasicInfo _$BasicInfoFromJson(Map<String, dynamic> json) {
  return _BasicInfo.fromJson(json);
}

/// @nodoc
mixin _$BasicInfo {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

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
      String? gender,
      String? dob,
      String? phone});
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
    Object? gender = freezed,
    Object? dob = freezed,
    Object? phone = freezed,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? gender,
      String? dob,
      String? phone});
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
    Object? gender = freezed,
    Object? dob = freezed,
    Object? phone = freezed,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicInfoImpl implements _BasicInfo {
  const _$BasicInfoImpl(
      {required this.firstname,
      required this.lastname,
      this.gender,
      this.dob,
      this.phone});

  factory _$BasicInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicInfoImplFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String? gender;
  @override
  final String? dob;
  @override
  final String? phone;

  @override
  String toString() {
    return 'BasicInfo(firstname: $firstname, lastname: $lastname, gender: $gender, dob: $dob, phone: $phone)';
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
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstname, lastname, gender, dob, phone);

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
      final String? gender,
      final String? dob,
      final String? phone}) = _$BasicInfoImpl;

  factory _BasicInfo.fromJson(Map<String, dynamic> json) =
      _$BasicInfoImpl.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String? get gender;
  @override
  String? get dob;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$BasicInfoImplCopyWith<_$BasicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtraInfo _$ExtraInfoFromJson(Map<String, dynamic> json) {
  return _ExtraInfo.fromJson(json);
}

/// @nodoc
mixin _$ExtraInfo {
  String? get insurancePolicyNumber => throw _privateConstructorUsedError;
  String? get bloodType => throw _privateConstructorUsedError;
  String? get maritalStatus => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraInfoCopyWith<ExtraInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraInfoCopyWith<$Res> {
  factory $ExtraInfoCopyWith(ExtraInfo value, $Res Function(ExtraInfo) then) =
      _$ExtraInfoCopyWithImpl<$Res, ExtraInfo>;
  @useResult
  $Res call(
      {String? insurancePolicyNumber,
      String? bloodType,
      String? maritalStatus,
      String? nationality});
}

/// @nodoc
class _$ExtraInfoCopyWithImpl<$Res, $Val extends ExtraInfo>
    implements $ExtraInfoCopyWith<$Res> {
  _$ExtraInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insurancePolicyNumber = freezed,
    Object? bloodType = freezed,
    Object? maritalStatus = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_value.copyWith(
      insurancePolicyNumber: freezed == insurancePolicyNumber
          ? _value.insurancePolicyNumber
          : insurancePolicyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraInfoImplCopyWith<$Res>
    implements $ExtraInfoCopyWith<$Res> {
  factory _$$ExtraInfoImplCopyWith(
          _$ExtraInfoImpl value, $Res Function(_$ExtraInfoImpl) then) =
      __$$ExtraInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? insurancePolicyNumber,
      String? bloodType,
      String? maritalStatus,
      String? nationality});
}

/// @nodoc
class __$$ExtraInfoImplCopyWithImpl<$Res>
    extends _$ExtraInfoCopyWithImpl<$Res, _$ExtraInfoImpl>
    implements _$$ExtraInfoImplCopyWith<$Res> {
  __$$ExtraInfoImplCopyWithImpl(
      _$ExtraInfoImpl _value, $Res Function(_$ExtraInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insurancePolicyNumber = freezed,
    Object? bloodType = freezed,
    Object? maritalStatus = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_$ExtraInfoImpl(
      insurancePolicyNumber: freezed == insurancePolicyNumber
          ? _value.insurancePolicyNumber
          : insurancePolicyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraInfoImpl implements _ExtraInfo {
  const _$ExtraInfoImpl(
      {this.insurancePolicyNumber,
      this.bloodType,
      this.maritalStatus,
      this.nationality});

  factory _$ExtraInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraInfoImplFromJson(json);

  @override
  final String? insurancePolicyNumber;
  @override
  final String? bloodType;
  @override
  final String? maritalStatus;
  @override
  final String? nationality;

  @override
  String toString() {
    return 'ExtraInfo(insurancePolicyNumber: $insurancePolicyNumber, bloodType: $bloodType, maritalStatus: $maritalStatus, nationality: $nationality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraInfoImpl &&
            (identical(other.insurancePolicyNumber, insurancePolicyNumber) ||
                other.insurancePolicyNumber == insurancePolicyNumber) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, insurancePolicyNumber, bloodType,
      maritalStatus, nationality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraInfoImplCopyWith<_$ExtraInfoImpl> get copyWith =>
      __$$ExtraInfoImplCopyWithImpl<_$ExtraInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraInfoImplToJson(
      this,
    );
  }
}

abstract class _ExtraInfo implements ExtraInfo {
  const factory _ExtraInfo(
      {final String? insurancePolicyNumber,
      final String? bloodType,
      final String? maritalStatus,
      final String? nationality}) = _$ExtraInfoImpl;

  factory _ExtraInfo.fromJson(Map<String, dynamic> json) =
      _$ExtraInfoImpl.fromJson;

  @override
  String? get insurancePolicyNumber;
  @override
  String? get bloodType;
  @override
  String? get maritalStatus;
  @override
  String? get nationality;
  @override
  @JsonKey(ignore: true)
  _$$ExtraInfoImplCopyWith<_$ExtraInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
