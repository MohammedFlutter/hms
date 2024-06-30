// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_doctor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeDoctorState {
  String get errorMessage => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  HomeDoctorStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDoctorStateCopyWith<HomeDoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDoctorStateCopyWith<$Res> {
  factory $HomeDoctorStateCopyWith(
          HomeDoctorState value, $Res Function(HomeDoctorState) then) =
      _$HomeDoctorStateCopyWithImpl<$Res, HomeDoctorState>;
  @useResult
  $Res call({String errorMessage, String firstname, HomeDoctorStatus status});
}

/// @nodoc
class _$HomeDoctorStateCopyWithImpl<$Res, $Val extends HomeDoctorState>
    implements $HomeDoctorStateCopyWith<$Res> {
  _$HomeDoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? firstname = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeDoctorStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDoctorStateImplCopyWith<$Res>
    implements $HomeDoctorStateCopyWith<$Res> {
  factory _$$HomeDoctorStateImplCopyWith(_$HomeDoctorStateImpl value,
          $Res Function(_$HomeDoctorStateImpl) then) =
      __$$HomeDoctorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage, String firstname, HomeDoctorStatus status});
}

/// @nodoc
class __$$HomeDoctorStateImplCopyWithImpl<$Res>
    extends _$HomeDoctorStateCopyWithImpl<$Res, _$HomeDoctorStateImpl>
    implements _$$HomeDoctorStateImplCopyWith<$Res> {
  __$$HomeDoctorStateImplCopyWithImpl(
      _$HomeDoctorStateImpl _value, $Res Function(_$HomeDoctorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? firstname = null,
    Object? status = null,
  }) {
    return _then(_$HomeDoctorStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeDoctorStatus,
    ));
  }
}

/// @nodoc

class _$HomeDoctorStateImpl implements _HomeDoctorState {
  const _$HomeDoctorStateImpl(
      {this.errorMessage = '',
      this.firstname = '',
      this.status = HomeDoctorStatus.initial});

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String firstname;
  @override
  @JsonKey()
  final HomeDoctorStatus status;

  @override
  String toString() {
    return 'HomeDoctorState(errorMessage: $errorMessage, firstname: $firstname, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDoctorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, firstname, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDoctorStateImplCopyWith<_$HomeDoctorStateImpl> get copyWith =>
      __$$HomeDoctorStateImplCopyWithImpl<_$HomeDoctorStateImpl>(
          this, _$identity);
}

abstract class _HomeDoctorState implements HomeDoctorState {
  const factory _HomeDoctorState(
      {final String errorMessage,
      final String firstname,
      final HomeDoctorStatus status}) = _$HomeDoctorStateImpl;

  @override
  String get errorMessage;
  @override
  String get firstname;
  @override
  HomeDoctorStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$HomeDoctorStateImplCopyWith<_$HomeDoctorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
