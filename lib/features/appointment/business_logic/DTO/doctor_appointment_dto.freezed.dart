// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorAppointmentDto {
  String get startTime => throw _privateConstructorUsedError;
  String get reasonForVisit => throw _privateConstructorUsedError;
  int get patientId => throw _privateConstructorUsedError;
  bool get isVirtual => throw _privateConstructorUsedError;
  String get patientName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorAppointmentDtoCopyWith<DoctorAppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorAppointmentDtoCopyWith<$Res> {
  factory $DoctorAppointmentDtoCopyWith(DoctorAppointmentDto value,
          $Res Function(DoctorAppointmentDto) then) =
      _$DoctorAppointmentDtoCopyWithImpl<$Res, DoctorAppointmentDto>;
  @useResult
  $Res call(
      {String startTime,
      String reasonForVisit,
      int patientId,
      bool isVirtual,
      String patientName});
}

/// @nodoc
class _$DoctorAppointmentDtoCopyWithImpl<$Res,
        $Val extends DoctorAppointmentDto>
    implements $DoctorAppointmentDtoCopyWith<$Res> {
  _$DoctorAppointmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? reasonForVisit = null,
    Object? patientId = null,
    Object? isVirtual = null,
    Object? patientName = null,
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
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      isVirtual: null == isVirtual
          ? _value.isVirtual
          : isVirtual // ignore: cast_nullable_to_non_nullable
              as bool,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorAppointmentDtoImplCopyWith<$Res>
    implements $DoctorAppointmentDtoCopyWith<$Res> {
  factory _$$DoctorAppointmentDtoImplCopyWith(_$DoctorAppointmentDtoImpl value,
          $Res Function(_$DoctorAppointmentDtoImpl) then) =
      __$$DoctorAppointmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startTime,
      String reasonForVisit,
      int patientId,
      bool isVirtual,
      String patientName});
}

/// @nodoc
class __$$DoctorAppointmentDtoImplCopyWithImpl<$Res>
    extends _$DoctorAppointmentDtoCopyWithImpl<$Res, _$DoctorAppointmentDtoImpl>
    implements _$$DoctorAppointmentDtoImplCopyWith<$Res> {
  __$$DoctorAppointmentDtoImplCopyWithImpl(_$DoctorAppointmentDtoImpl _value,
      $Res Function(_$DoctorAppointmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? reasonForVisit = null,
    Object? patientId = null,
    Object? isVirtual = null,
    Object? patientName = null,
  }) {
    return _then(_$DoctorAppointmentDtoImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      reasonForVisit: null == reasonForVisit
          ? _value.reasonForVisit
          : reasonForVisit // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      isVirtual: null == isVirtual
          ? _value.isVirtual
          : isVirtual // ignore: cast_nullable_to_non_nullable
              as bool,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoctorAppointmentDtoImpl implements _DoctorAppointmentDto {
  const _$DoctorAppointmentDtoImpl(
      {required this.startTime,
      required this.reasonForVisit,
      required this.patientId,
      required this.isVirtual,
      required this.patientName});

  @override
  final String startTime;
  @override
  final String reasonForVisit;
  @override
  final int patientId;
  @override
  final bool isVirtual;
  @override
  final String patientName;

  @override
  String toString() {
    return 'DoctorAppointmentDto(startTime: $startTime, reasonForVisit: $reasonForVisit, patientId: $patientId, isVirtual: $isVirtual, patientName: $patientName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorAppointmentDtoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.reasonForVisit, reasonForVisit) ||
                other.reasonForVisit == reasonForVisit) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.isVirtual, isVirtual) ||
                other.isVirtual == isVirtual) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, reasonForVisit,
      patientId, isVirtual, patientName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorAppointmentDtoImplCopyWith<_$DoctorAppointmentDtoImpl>
      get copyWith =>
          __$$DoctorAppointmentDtoImplCopyWithImpl<_$DoctorAppointmentDtoImpl>(
              this, _$identity);
}

abstract class _DoctorAppointmentDto implements DoctorAppointmentDto {
  const factory _DoctorAppointmentDto(
      {required final String startTime,
      required final String reasonForVisit,
      required final int patientId,
      required final bool isVirtual,
      required final String patientName}) = _$DoctorAppointmentDtoImpl;

  @override
  String get startTime;
  @override
  String get reasonForVisit;
  @override
  int get patientId;
  @override
  bool get isVirtual;
  @override
  String get patientName;
  @override
  @JsonKey(ignore: true)
  _$$DoctorAppointmentDtoImplCopyWith<_$DoctorAppointmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
