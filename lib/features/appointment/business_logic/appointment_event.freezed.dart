// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) createAppointment,
    required TResult Function(int doctorId) getAvailableTimeSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Appointment appointment)? createAppointment,
    TResult? Function(int doctorId)? getAvailableTimeSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? createAppointment,
    TResult Function(int doctorId)? getAvailableTimeSlots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAppointment value) createAppointment,
    required TResult Function(GetAvailableTimeSlots value)
        getAvailableTimeSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAppointment value)? createAppointment,
    TResult? Function(GetAvailableTimeSlots value)? getAvailableTimeSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAppointment value)? createAppointment,
    TResult Function(GetAvailableTimeSlots value)? getAvailableTimeSlots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res, AppointmentEvent>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res, $Val extends AppointmentEvent>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateAppointmentImplCopyWith<$Res> {
  factory _$$CreateAppointmentImplCopyWith(_$CreateAppointmentImpl value,
          $Res Function(_$CreateAppointmentImpl) then) =
      __$$CreateAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Appointment appointment});

  $AppointmentCopyWith<$Res> get appointment;
}

/// @nodoc
class __$$CreateAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$CreateAppointmentImpl>
    implements _$$CreateAppointmentImplCopyWith<$Res> {
  __$$CreateAppointmentImplCopyWithImpl(_$CreateAppointmentImpl _value,
      $Res Function(_$CreateAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = null,
  }) {
    return _then(_$CreateAppointmentImpl(
      null == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res> get appointment {
    return $AppointmentCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _$CreateAppointmentImpl implements CreateAppointment {
  const _$CreateAppointmentImpl(this.appointment);

  @override
  final Appointment appointment;

  @override
  String toString() {
    return 'AppointmentEvent.createAppointment(appointment: $appointment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAppointmentImpl &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAppointmentImplCopyWith<_$CreateAppointmentImpl> get copyWith =>
      __$$CreateAppointmentImplCopyWithImpl<_$CreateAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) createAppointment,
    required TResult Function(int doctorId) getAvailableTimeSlots,
  }) {
    return createAppointment(appointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Appointment appointment)? createAppointment,
    TResult? Function(int doctorId)? getAvailableTimeSlots,
  }) {
    return createAppointment?.call(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? createAppointment,
    TResult Function(int doctorId)? getAvailableTimeSlots,
    required TResult orElse(),
  }) {
    if (createAppointment != null) {
      return createAppointment(appointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAppointment value) createAppointment,
    required TResult Function(GetAvailableTimeSlots value)
        getAvailableTimeSlots,
  }) {
    return createAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAppointment value)? createAppointment,
    TResult? Function(GetAvailableTimeSlots value)? getAvailableTimeSlots,
  }) {
    return createAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAppointment value)? createAppointment,
    TResult Function(GetAvailableTimeSlots value)? getAvailableTimeSlots,
    required TResult orElse(),
  }) {
    if (createAppointment != null) {
      return createAppointment(this);
    }
    return orElse();
  }
}

abstract class CreateAppointment implements AppointmentEvent {
  const factory CreateAppointment(final Appointment appointment) =
      _$CreateAppointmentImpl;

  Appointment get appointment;
  @JsonKey(ignore: true)
  _$$CreateAppointmentImplCopyWith<_$CreateAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAvailableTimeSlotsImplCopyWith<$Res> {
  factory _$$GetAvailableTimeSlotsImplCopyWith(
          _$GetAvailableTimeSlotsImpl value,
          $Res Function(_$GetAvailableTimeSlotsImpl) then) =
      __$$GetAvailableTimeSlotsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int doctorId});
}

/// @nodoc
class __$$GetAvailableTimeSlotsImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$GetAvailableTimeSlotsImpl>
    implements _$$GetAvailableTimeSlotsImplCopyWith<$Res> {
  __$$GetAvailableTimeSlotsImplCopyWithImpl(_$GetAvailableTimeSlotsImpl _value,
      $Res Function(_$GetAvailableTimeSlotsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
  }) {
    return _then(_$GetAvailableTimeSlotsImpl(
      null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAvailableTimeSlotsImpl implements GetAvailableTimeSlots {
  const _$GetAvailableTimeSlotsImpl(this.doctorId);

  @override
  final int doctorId;

  @override
  String toString() {
    return 'AppointmentEvent.getAvailableTimeSlots(doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAvailableTimeSlotsImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAvailableTimeSlotsImplCopyWith<_$GetAvailableTimeSlotsImpl>
      get copyWith => __$$GetAvailableTimeSlotsImplCopyWithImpl<
          _$GetAvailableTimeSlotsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) createAppointment,
    required TResult Function(int doctorId) getAvailableTimeSlots,
  }) {
    return getAvailableTimeSlots(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Appointment appointment)? createAppointment,
    TResult? Function(int doctorId)? getAvailableTimeSlots,
  }) {
    return getAvailableTimeSlots?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? createAppointment,
    TResult Function(int doctorId)? getAvailableTimeSlots,
    required TResult orElse(),
  }) {
    if (getAvailableTimeSlots != null) {
      return getAvailableTimeSlots(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAppointment value) createAppointment,
    required TResult Function(GetAvailableTimeSlots value)
        getAvailableTimeSlots,
  }) {
    return getAvailableTimeSlots(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAppointment value)? createAppointment,
    TResult? Function(GetAvailableTimeSlots value)? getAvailableTimeSlots,
  }) {
    return getAvailableTimeSlots?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAppointment value)? createAppointment,
    TResult Function(GetAvailableTimeSlots value)? getAvailableTimeSlots,
    required TResult orElse(),
  }) {
    if (getAvailableTimeSlots != null) {
      return getAvailableTimeSlots(this);
    }
    return orElse();
  }
}

abstract class GetAvailableTimeSlots implements AppointmentEvent {
  const factory GetAvailableTimeSlots(final int doctorId) =
      _$GetAvailableTimeSlotsImpl;

  int get doctorId;
  @JsonKey(ignore: true)
  _$$GetAvailableTimeSlotsImplCopyWith<_$GetAvailableTimeSlotsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
