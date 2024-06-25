// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_patient_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePatientState {
  String get errorMessage => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  HomePatientStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePatientStateCopyWith<HomePatientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePatientStateCopyWith<$Res> {
  factory $HomePatientStateCopyWith(
          HomePatientState value, $Res Function(HomePatientState) then) =
      _$HomePatientStateCopyWithImpl<$Res, HomePatientState>;
  @useResult
  $Res call({String errorMessage, String firstname, HomePatientStatus status});
}

/// @nodoc
class _$HomePatientStateCopyWithImpl<$Res, $Val extends HomePatientState>
    implements $HomePatientStateCopyWith<$Res> {
  _$HomePatientStateCopyWithImpl(this._value, this._then);

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
              as HomePatientStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePatientStateImplCopyWith<$Res>
    implements $HomePatientStateCopyWith<$Res> {
  factory _$$HomePatientStateImplCopyWith(_$HomePatientStateImpl value,
          $Res Function(_$HomePatientStateImpl) then) =
      __$$HomePatientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage, String firstname, HomePatientStatus status});
}

/// @nodoc
class __$$HomePatientStateImplCopyWithImpl<$Res>
    extends _$HomePatientStateCopyWithImpl<$Res, _$HomePatientStateImpl>
    implements _$$HomePatientStateImplCopyWith<$Res> {
  __$$HomePatientStateImplCopyWithImpl(_$HomePatientStateImpl _value,
      $Res Function(_$HomePatientStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? firstname = null,
    Object? status = null,
  }) {
    return _then(_$HomePatientStateImpl(
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
              as HomePatientStatus,
    ));
  }
}

/// @nodoc

class _$HomePatientStateImpl implements _HomePatientState {
  const _$HomePatientStateImpl(
      {this.errorMessage = '',
      this.firstname = '',
      this.status = HomePatientStatus.initial});

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String firstname;
  @override
  @JsonKey()
  final HomePatientStatus status;

  @override
  String toString() {
    return 'HomePatientState(errorMessage: $errorMessage, firstname: $firstname, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePatientStateImpl &&
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
  _$$HomePatientStateImplCopyWith<_$HomePatientStateImpl> get copyWith =>
      __$$HomePatientStateImplCopyWithImpl<_$HomePatientStateImpl>(
          this, _$identity);
}

abstract class _HomePatientState implements HomePatientState {
  const factory _HomePatientState(
      {final String errorMessage,
      final String firstname,
      final HomePatientStatus status}) = _$HomePatientStateImpl;

  @override
  String get errorMessage;
  @override
  String get firstname;
  @override
  HomePatientStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$HomePatientStateImplCopyWith<_$HomePatientStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
