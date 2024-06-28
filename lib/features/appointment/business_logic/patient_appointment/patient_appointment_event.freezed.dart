// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_appointment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientAppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAppointment value) loadAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAppointment value)? loadAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAppointment value)? loadAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientAppointmentEventCopyWith<$Res> {
  factory $PatientAppointmentEventCopyWith(PatientAppointmentEvent value,
          $Res Function(PatientAppointmentEvent) then) =
      _$PatientAppointmentEventCopyWithImpl<$Res, PatientAppointmentEvent>;
}

/// @nodoc
class _$PatientAppointmentEventCopyWithImpl<$Res,
        $Val extends PatientAppointmentEvent>
    implements $PatientAppointmentEventCopyWith<$Res> {
  _$PatientAppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadAppointmentImplCopyWith<$Res> {
  factory _$$LoadAppointmentImplCopyWith(_$LoadAppointmentImpl value,
          $Res Function(_$LoadAppointmentImpl) then) =
      __$$LoadAppointmentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAppointmentImplCopyWithImpl<$Res>
    extends _$PatientAppointmentEventCopyWithImpl<$Res, _$LoadAppointmentImpl>
    implements _$$LoadAppointmentImplCopyWith<$Res> {
  __$$LoadAppointmentImplCopyWithImpl(
      _$LoadAppointmentImpl _value, $Res Function(_$LoadAppointmentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAppointmentImpl implements LoadAppointment {
  const _$LoadAppointmentImpl();

  @override
  String toString() {
    return 'PatientAppointmentEvent.loadAppointment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAppointmentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAppointment,
  }) {
    return loadAppointment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAppointment,
  }) {
    return loadAppointment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAppointment,
    required TResult orElse(),
  }) {
    if (loadAppointment != null) {
      return loadAppointment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAppointment value) loadAppointment,
  }) {
    return loadAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAppointment value)? loadAppointment,
  }) {
    return loadAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAppointment value)? loadAppointment,
    required TResult orElse(),
  }) {
    if (loadAppointment != null) {
      return loadAppointment(this);
    }
    return orElse();
  }
}

abstract class LoadAppointment implements PatientAppointmentEvent {
  const factory LoadAppointment() = _$LoadAppointmentImpl;
}
