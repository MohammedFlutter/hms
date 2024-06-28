// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorAppointment _$DoctorAppointmentFromJson(Map<String, dynamic> json) {
  return _DoctorAppointment.fromJson(json);
}

/// @nodoc
mixin _$DoctorAppointment {
  String get startTime => throw _privateConstructorUsedError;
  String get reasonForVisit => throw _privateConstructorUsedError;
  int get patientId => throw _privateConstructorUsedError;
  bool? get isVirtual => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorAppointmentCopyWith<DoctorAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorAppointmentCopyWith<$Res> {
  factory $DoctorAppointmentCopyWith(
          DoctorAppointment value, $Res Function(DoctorAppointment) then) =
      _$DoctorAppointmentCopyWithImpl<$Res, DoctorAppointment>;
  @useResult
  $Res call(
      {String startTime,
      String reasonForVisit,
      int patientId,
      bool? isVirtual});
}

/// @nodoc
class _$DoctorAppointmentCopyWithImpl<$Res, $Val extends DoctorAppointment>
    implements $DoctorAppointmentCopyWith<$Res> {
  _$DoctorAppointmentCopyWithImpl(this._value, this._then);

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
    Object? isVirtual = freezed,
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
      isVirtual: freezed == isVirtual
          ? _value.isVirtual
          : isVirtual // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorAppointmentImplCopyWith<$Res>
    implements $DoctorAppointmentCopyWith<$Res> {
  factory _$$DoctorAppointmentImplCopyWith(_$DoctorAppointmentImpl value,
          $Res Function(_$DoctorAppointmentImpl) then) =
      __$$DoctorAppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startTime,
      String reasonForVisit,
      int patientId,
      bool? isVirtual});
}

/// @nodoc
class __$$DoctorAppointmentImplCopyWithImpl<$Res>
    extends _$DoctorAppointmentCopyWithImpl<$Res, _$DoctorAppointmentImpl>
    implements _$$DoctorAppointmentImplCopyWith<$Res> {
  __$$DoctorAppointmentImplCopyWithImpl(_$DoctorAppointmentImpl _value,
      $Res Function(_$DoctorAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? reasonForVisit = null,
    Object? patientId = null,
    Object? isVirtual = freezed,
  }) {
    return _then(_$DoctorAppointmentImpl(
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
      isVirtual: freezed == isVirtual
          ? _value.isVirtual
          : isVirtual // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorAppointmentImpl implements _DoctorAppointment {
  const _$DoctorAppointmentImpl(
      {required this.startTime,
      required this.reasonForVisit,
      required this.patientId,
      required this.isVirtual});

  factory _$DoctorAppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorAppointmentImplFromJson(json);

  @override
  final String startTime;
  @override
  final String reasonForVisit;
  @override
  final int patientId;
  @override
  final bool? isVirtual;

  @override
  String toString() {
    return 'DoctorAppointment(startTime: $startTime, reasonForVisit: $reasonForVisit, patientId: $patientId, isVirtual: $isVirtual)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorAppointmentImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.reasonForVisit, reasonForVisit) ||
                other.reasonForVisit == reasonForVisit) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.isVirtual, isVirtual) ||
                other.isVirtual == isVirtual));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startTime, reasonForVisit, patientId, isVirtual);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorAppointmentImplCopyWith<_$DoctorAppointmentImpl> get copyWith =>
      __$$DoctorAppointmentImplCopyWithImpl<_$DoctorAppointmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorAppointmentImplToJson(
      this,
    );
  }
}

abstract class _DoctorAppointment implements DoctorAppointment {
  const factory _DoctorAppointment(
      {required final String startTime,
      required final String reasonForVisit,
      required final int patientId,
      required final bool? isVirtual}) = _$DoctorAppointmentImpl;

  factory _DoctorAppointment.fromJson(Map<String, dynamic> json) =
      _$DoctorAppointmentImpl.fromJson;

  @override
  String get startTime;
  @override
  String get reasonForVisit;
  @override
  int get patientId;
  @override
  bool? get isVirtual;
  @override
  @JsonKey(ignore: true)
  _$$DoctorAppointmentImplCopyWith<_$DoctorAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
