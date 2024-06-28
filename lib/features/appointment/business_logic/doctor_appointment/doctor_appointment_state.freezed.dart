// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_appointment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorAppointmentState {
  String get errorMessage => throw _privateConstructorUsedError;
  List<DoctorAppointment>? get doctorAppointments =>
      throw _privateConstructorUsedError;
  DoctorAppointmentStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorAppointmentStateCopyWith<DoctorAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorAppointmentStateCopyWith<$Res> {
  factory $DoctorAppointmentStateCopyWith(DoctorAppointmentState value,
          $Res Function(DoctorAppointmentState) then) =
      _$DoctorAppointmentStateCopyWithImpl<$Res, DoctorAppointmentState>;
  @useResult
  $Res call(
      {String errorMessage,
      List<DoctorAppointment>? doctorAppointments,
      DoctorAppointmentStatus status});
}

/// @nodoc
class _$DoctorAppointmentStateCopyWithImpl<$Res,
        $Val extends DoctorAppointmentState>
    implements $DoctorAppointmentStateCopyWith<$Res> {
  _$DoctorAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? doctorAppointments = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      doctorAppointments: freezed == doctorAppointments
          ? _value.doctorAppointments
          : doctorAppointments // ignore: cast_nullable_to_non_nullable
              as List<DoctorAppointment>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DoctorAppointmentStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorAppointmentStateImplCopyWith<$Res>
    implements $DoctorAppointmentStateCopyWith<$Res> {
  factory _$$DoctorAppointmentStateImplCopyWith(
          _$DoctorAppointmentStateImpl value,
          $Res Function(_$DoctorAppointmentStateImpl) then) =
      __$$DoctorAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      List<DoctorAppointment>? doctorAppointments,
      DoctorAppointmentStatus status});
}

/// @nodoc
class __$$DoctorAppointmentStateImplCopyWithImpl<$Res>
    extends _$DoctorAppointmentStateCopyWithImpl<$Res,
        _$DoctorAppointmentStateImpl>
    implements _$$DoctorAppointmentStateImplCopyWith<$Res> {
  __$$DoctorAppointmentStateImplCopyWithImpl(
      _$DoctorAppointmentStateImpl _value,
      $Res Function(_$DoctorAppointmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? doctorAppointments = freezed,
    Object? status = null,
  }) {
    return _then(_$DoctorAppointmentStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      doctorAppointments: freezed == doctorAppointments
          ? _value._doctorAppointments
          : doctorAppointments // ignore: cast_nullable_to_non_nullable
              as List<DoctorAppointment>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DoctorAppointmentStatus,
    ));
  }
}

/// @nodoc

class _$DoctorAppointmentStateImpl implements _DoctorAppointmentState {
  const _$DoctorAppointmentStateImpl(
      {this.errorMessage = '',
      final List<DoctorAppointment>? doctorAppointments = null,
      this.status = DoctorAppointmentStatus.initial})
      : _doctorAppointments = doctorAppointments;

  @override
  @JsonKey()
  final String errorMessage;
  final List<DoctorAppointment>? _doctorAppointments;
  @override
  @JsonKey()
  List<DoctorAppointment>? get doctorAppointments {
    final value = _doctorAppointments;
    if (value == null) return null;
    if (_doctorAppointments is EqualUnmodifiableListView)
      return _doctorAppointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final DoctorAppointmentStatus status;

  @override
  String toString() {
    return 'DoctorAppointmentState(errorMessage: $errorMessage, doctorAppointments: $doctorAppointments, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorAppointmentStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._doctorAppointments, _doctorAppointments) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage,
      const DeepCollectionEquality().hash(_doctorAppointments), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorAppointmentStateImplCopyWith<_$DoctorAppointmentStateImpl>
      get copyWith => __$$DoctorAppointmentStateImplCopyWithImpl<
          _$DoctorAppointmentStateImpl>(this, _$identity);
}

abstract class _DoctorAppointmentState implements DoctorAppointmentState {
  const factory _DoctorAppointmentState(
      {final String errorMessage,
      final List<DoctorAppointment>? doctorAppointments,
      final DoctorAppointmentStatus status}) = _$DoctorAppointmentStateImpl;

  @override
  String get errorMessage;
  @override
  List<DoctorAppointment>? get doctorAppointments;
  @override
  DoctorAppointmentStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$DoctorAppointmentStateImplCopyWith<_$DoctorAppointmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
