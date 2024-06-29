// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientAppointment _$PatientAppointmentFromJson(Map<String, dynamic> json) {
  return _PatientAppointment.fromJson(json);
}

/// @nodoc
mixin _$PatientAppointment {
  String get startTime => throw _privateConstructorUsedError;
  String get reasonForVisit => throw _privateConstructorUsedError;
  int get doctorId => throw _privateConstructorUsedError;
  bool get virtual => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientAppointmentCopyWith<PatientAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientAppointmentCopyWith<$Res> {
  factory $PatientAppointmentCopyWith(
          PatientAppointment value, $Res Function(PatientAppointment) then) =
      _$PatientAppointmentCopyWithImpl<$Res, PatientAppointment>;
  @useResult
  $Res call(
      {String startTime, String reasonForVisit, int doctorId, bool virtual});
}

/// @nodoc
class _$PatientAppointmentCopyWithImpl<$Res, $Val extends PatientAppointment>
    implements $PatientAppointmentCopyWith<$Res> {
  _$PatientAppointmentCopyWithImpl(this._value, this._then);

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
    Object? virtual = null,
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
      virtual: null == virtual
          ? _value.virtual
          : virtual // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientAppointmentImplCopyWith<$Res>
    implements $PatientAppointmentCopyWith<$Res> {
  factory _$$PatientAppointmentImplCopyWith(_$PatientAppointmentImpl value,
          $Res Function(_$PatientAppointmentImpl) then) =
      __$$PatientAppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startTime, String reasonForVisit, int doctorId, bool virtual});
}

/// @nodoc
class __$$PatientAppointmentImplCopyWithImpl<$Res>
    extends _$PatientAppointmentCopyWithImpl<$Res, _$PatientAppointmentImpl>
    implements _$$PatientAppointmentImplCopyWith<$Res> {
  __$$PatientAppointmentImplCopyWithImpl(_$PatientAppointmentImpl _value,
      $Res Function(_$PatientAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? reasonForVisit = null,
    Object? doctorId = null,
    Object? virtual = null,
  }) {
    return _then(_$PatientAppointmentImpl(
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
      virtual: null == virtual
          ? _value.virtual
          : virtual // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientAppointmentImpl implements _PatientAppointment {
  const _$PatientAppointmentImpl(
      {required this.startTime,
      required this.reasonForVisit,
      required this.doctorId,
      this.virtual = false});

  factory _$PatientAppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientAppointmentImplFromJson(json);

  @override
  final String startTime;
  @override
  final String reasonForVisit;
  @override
  final int doctorId;
  @override
  @JsonKey()
  final bool virtual;

  @override
  String toString() {
    return 'PatientAppointment(startTime: $startTime, reasonForVisit: $reasonForVisit, doctorId: $doctorId, virtual: $virtual)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientAppointmentImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.reasonForVisit, reasonForVisit) ||
                other.reasonForVisit == reasonForVisit) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.virtual, virtual) || other.virtual == virtual));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startTime, reasonForVisit, doctorId, virtual);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientAppointmentImplCopyWith<_$PatientAppointmentImpl> get copyWith =>
      __$$PatientAppointmentImplCopyWithImpl<_$PatientAppointmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientAppointmentImplToJson(
      this,
    );
  }
}

abstract class _PatientAppointment implements PatientAppointment {
  const factory _PatientAppointment(
      {required final String startTime,
      required final String reasonForVisit,
      required final int doctorId,
      final bool virtual}) = _$PatientAppointmentImpl;

  factory _PatientAppointment.fromJson(Map<String, dynamic> json) =
      _$PatientAppointmentImpl.fromJson;

  @override
  String get startTime;
  @override
  String get reasonForVisit;
  @override
  int get doctorId;
  @override
  bool get virtual;
  @override
  @JsonKey(ignore: true)
  _$$PatientAppointmentImplCopyWith<_$PatientAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
