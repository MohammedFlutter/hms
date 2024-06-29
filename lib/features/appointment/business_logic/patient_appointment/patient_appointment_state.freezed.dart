// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_appointment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientAppointmentState {
  String get errorMessage => throw _privateConstructorUsedError;
  List<PatientAppointmentDto>? get patientAppointments =>
      throw _privateConstructorUsedError;
  PatientAppointmentStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientAppointmentStateCopyWith<PatientAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientAppointmentStateCopyWith<$Res> {
  factory $PatientAppointmentStateCopyWith(PatientAppointmentState value,
          $Res Function(PatientAppointmentState) then) =
      _$PatientAppointmentStateCopyWithImpl<$Res, PatientAppointmentState>;
  @useResult
  $Res call(
      {String errorMessage,
      List<PatientAppointmentDto>? patientAppointments,
      PatientAppointmentStatus status});
}

/// @nodoc
class _$PatientAppointmentStateCopyWithImpl<$Res,
        $Val extends PatientAppointmentState>
    implements $PatientAppointmentStateCopyWith<$Res> {
  _$PatientAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? patientAppointments = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      patientAppointments: freezed == patientAppointments
          ? _value.patientAppointments
          : patientAppointments // ignore: cast_nullable_to_non_nullable
              as List<PatientAppointmentDto>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PatientAppointmentStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientAppointmentStateImplCopyWith<$Res>
    implements $PatientAppointmentStateCopyWith<$Res> {
  factory _$$PatientAppointmentStateImplCopyWith(
          _$PatientAppointmentStateImpl value,
          $Res Function(_$PatientAppointmentStateImpl) then) =
      __$$PatientAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      List<PatientAppointmentDto>? patientAppointments,
      PatientAppointmentStatus status});
}

/// @nodoc
class __$$PatientAppointmentStateImplCopyWithImpl<$Res>
    extends _$PatientAppointmentStateCopyWithImpl<$Res,
        _$PatientAppointmentStateImpl>
    implements _$$PatientAppointmentStateImplCopyWith<$Res> {
  __$$PatientAppointmentStateImplCopyWithImpl(
      _$PatientAppointmentStateImpl _value,
      $Res Function(_$PatientAppointmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? patientAppointments = freezed,
    Object? status = null,
  }) {
    return _then(_$PatientAppointmentStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      patientAppointments: freezed == patientAppointments
          ? _value._patientAppointments
          : patientAppointments // ignore: cast_nullable_to_non_nullable
              as List<PatientAppointmentDto>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PatientAppointmentStatus,
    ));
  }
}

/// @nodoc

class _$PatientAppointmentStateImpl implements _PatientAppointmentState {
  const _$PatientAppointmentStateImpl(
      {this.errorMessage = '',
      final List<PatientAppointmentDto>? patientAppointments = null,
      this.status = PatientAppointmentStatus.initial})
      : _patientAppointments = patientAppointments;

  @override
  @JsonKey()
  final String errorMessage;
  final List<PatientAppointmentDto>? _patientAppointments;
  @override
  @JsonKey()
  List<PatientAppointmentDto>? get patientAppointments {
    final value = _patientAppointments;
    if (value == null) return null;
    if (_patientAppointments is EqualUnmodifiableListView)
      return _patientAppointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final PatientAppointmentStatus status;

  @override
  String toString() {
    return 'PatientAppointmentState(errorMessage: $errorMessage, patientAppointments: $patientAppointments, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientAppointmentStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._patientAppointments, _patientAppointments) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage,
      const DeepCollectionEquality().hash(_patientAppointments), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientAppointmentStateImplCopyWith<_$PatientAppointmentStateImpl>
      get copyWith => __$$PatientAppointmentStateImplCopyWithImpl<
          _$PatientAppointmentStateImpl>(this, _$identity);
}

abstract class _PatientAppointmentState implements PatientAppointmentState {
  const factory _PatientAppointmentState(
      {final String errorMessage,
      final List<PatientAppointmentDto>? patientAppointments,
      final PatientAppointmentStatus status}) = _$PatientAppointmentStateImpl;

  @override
  String get errorMessage;
  @override
  List<PatientAppointmentDto>? get patientAppointments;
  @override
  PatientAppointmentStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$PatientAppointmentStateImplCopyWith<_$PatientAppointmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
