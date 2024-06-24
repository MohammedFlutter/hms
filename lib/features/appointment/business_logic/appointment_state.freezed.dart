// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentState {
  List<String> get timeSlots => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  AppointmentStateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentStateCopyWith<AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
  @useResult
  $Res call(
      {List<String> timeSlots,
      String errorMessage,
      AppointmentStateStatus status});
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlots = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      timeSlots: null == timeSlots
          ? _value.timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentStateImplCopyWith<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  factory _$$AppointmentStateImplCopyWith(_$AppointmentStateImpl value,
          $Res Function(_$AppointmentStateImpl) then) =
      __$$AppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> timeSlots,
      String errorMessage,
      AppointmentStateStatus status});
}

/// @nodoc
class __$$AppointmentStateImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$AppointmentStateImpl>
    implements _$$AppointmentStateImplCopyWith<$Res> {
  __$$AppointmentStateImplCopyWithImpl(_$AppointmentStateImpl _value,
      $Res Function(_$AppointmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlots = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_$AppointmentStateImpl(
      timeSlots: null == timeSlots
          ? _value._timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentStateStatus,
    ));
  }
}

/// @nodoc

class _$AppointmentStateImpl implements _AppointmentState {
  const _$AppointmentStateImpl(
      {final List<String> timeSlots = const [],
      this.errorMessage = '',
      this.status = AppointmentStateStatus.initial})
      : _timeSlots = timeSlots;

  final List<String> _timeSlots;
  @override
  @JsonKey()
  List<String> get timeSlots {
    if (_timeSlots is EqualUnmodifiableListView) return _timeSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeSlots);
  }

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final AppointmentStateStatus status;

  @override
  String toString() {
    return 'AppointmentState(timeSlots: $timeSlots, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._timeSlots, _timeSlots) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_timeSlots), errorMessage, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentStateImplCopyWith<_$AppointmentStateImpl> get copyWith =>
      __$$AppointmentStateImplCopyWithImpl<_$AppointmentStateImpl>(
          this, _$identity);
}

abstract class _AppointmentState implements AppointmentState {
  const factory _AppointmentState(
      {final List<String> timeSlots,
      final String errorMessage,
      final AppointmentStateStatus status}) = _$AppointmentStateImpl;

  @override
  List<String> get timeSlots;
  @override
  String get errorMessage;
  @override
  AppointmentStateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentStateImplCopyWith<_$AppointmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
