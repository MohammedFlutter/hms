// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientAppointmentDto {
  String get startTime => throw _privateConstructorUsedError;
  String get reasonForVisit => throw _privateConstructorUsedError;
  int get doctorId => throw _privateConstructorUsedError;
  bool get isVirtual => throw _privateConstructorUsedError;
  String get doctorName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientAppointmentDtoCopyWith<PatientAppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientAppointmentDtoCopyWith<$Res> {
  factory $PatientAppointmentDtoCopyWith(PatientAppointmentDto value,
          $Res Function(PatientAppointmentDto) then) =
      _$PatientAppointmentDtoCopyWithImpl<$Res, PatientAppointmentDto>;
  @useResult
  $Res call(
      {String startTime,
      String reasonForVisit,
      int doctorId,
      bool isVirtual,
      String doctorName});
}

/// @nodoc
class _$PatientAppointmentDtoCopyWithImpl<$Res,
        $Val extends PatientAppointmentDto>
    implements $PatientAppointmentDtoCopyWith<$Res> {
  _$PatientAppointmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? reasonForVisit = null,
    Object? doctorId = null,
    Object? isVirtual = null,
    Object? doctorName = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      reasonForVisit: null == reasonForVisit
          ? _value.reasonForVisit
          : reasonForVisit // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
      isVirtual: null == isVirtual
          ? _value.isVirtual
          : isVirtual // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorName: null == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientAppointmentDtoImplCopyWith<$Res>
    implements $PatientAppointmentDtoCopyWith<$Res> {
  factory _$$PatientAppointmentDtoImplCopyWith(
          _$PatientAppointmentDtoImpl value,
          $Res Function(_$PatientAppointmentDtoImpl) then) =
      __$$PatientAppointmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startTime,
      String reasonForVisit,
      int doctorId,
      bool isVirtual,
      String doctorName});
}

/// @nodoc
class __$$PatientAppointmentDtoImplCopyWithImpl<$Res>
    extends _$PatientAppointmentDtoCopyWithImpl<$Res,
        _$PatientAppointmentDtoImpl>
    implements _$$PatientAppointmentDtoImplCopyWith<$Res> {
  __$$PatientAppointmentDtoImplCopyWithImpl(_$PatientAppointmentDtoImpl _value,
      $Res Function(_$PatientAppointmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? reasonForVisit = null,
    Object? doctorId = null,
    Object? isVirtual = null,
    Object? doctorName = null,
  }) {
    return _then(_$PatientAppointmentDtoImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      reasonForVisit: null == reasonForVisit
          ? _value.reasonForVisit
          : reasonForVisit // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
      isVirtual: null == isVirtual
          ? _value.isVirtual
          : isVirtual // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorName: null == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PatientAppointmentDtoImpl implements _PatientAppointmentDto {
  const _$PatientAppointmentDtoImpl(
      {required this.startTime,
      required this.reasonForVisit,
      required this.doctorId,
      required this.isVirtual,
      required this.doctorName});

  @override
  final String startTime;
  @override
  final String reasonForVisit;
  @override
  final int doctorId;
  @override
  final bool isVirtual;
  @override
  final String doctorName;

  @override
  String toString() {
    return 'PatientAppointmentDto(startTime: $startTime, reasonForVisit: $reasonForVisit, doctorId: $doctorId, isVirtual: $isVirtual, doctorName: $doctorName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientAppointmentDtoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.reasonForVisit, reasonForVisit) ||
                other.reasonForVisit == reasonForVisit) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.isVirtual, isVirtual) ||
                other.isVirtual == isVirtual) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, startTime, reasonForVisit, doctorId, isVirtual, doctorName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientAppointmentDtoImplCopyWith<_$PatientAppointmentDtoImpl>
      get copyWith => __$$PatientAppointmentDtoImplCopyWithImpl<
          _$PatientAppointmentDtoImpl>(this, _$identity);
}

abstract class _PatientAppointmentDto implements PatientAppointmentDto {
  const factory _PatientAppointmentDto(
      {required final String startTime,
      required final String reasonForVisit,
      required final int doctorId,
      required final bool isVirtual,
      required final String doctorName}) = _$PatientAppointmentDtoImpl;

  @override
  String get startTime;
  @override
  String get reasonForVisit;
  @override
  int get doctorId;
  @override
  bool get isVirtual;
  @override
  String get doctorName;
  @override
  @JsonKey(ignore: true)
  _$$PatientAppointmentDtoImplCopyWith<_$PatientAppointmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
