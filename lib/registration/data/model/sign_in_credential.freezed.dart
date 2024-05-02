// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInCredential _$SignInCredentialFromJson(Map<String, dynamic> json) {
  return _SignInCredential.fromJson(json);
}

/// @nodoc
mixin _$SignInCredential {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInCredentialCopyWith<SignInCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInCredentialCopyWith<$Res> {
  factory $SignInCredentialCopyWith(
          SignInCredential value, $Res Function(SignInCredential) then) =
      _$SignInCredentialCopyWithImpl<$Res, SignInCredential>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInCredentialCopyWithImpl<$Res, $Val extends SignInCredential>
    implements $SignInCredentialCopyWith<$Res> {
  _$SignInCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInCredentialImplCopyWith<$Res>
    implements $SignInCredentialCopyWith<$Res> {
  factory _$$SignInCredentialImplCopyWith(_$SignInCredentialImpl value,
          $Res Function(_$SignInCredentialImpl) then) =
      __$$SignInCredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInCredentialImplCopyWithImpl<$Res>
    extends _$SignInCredentialCopyWithImpl<$Res, _$SignInCredentialImpl>
    implements _$$SignInCredentialImplCopyWith<$Res> {
  __$$SignInCredentialImplCopyWithImpl(_$SignInCredentialImpl _value,
      $Res Function(_$SignInCredentialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInCredentialImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInCredentialImpl implements _SignInCredential {
  const _$SignInCredentialImpl({required this.email, required this.password});

  factory _$SignInCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInCredentialImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInCredential(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInCredentialImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInCredentialImplCopyWith<_$SignInCredentialImpl> get copyWith =>
      __$$SignInCredentialImplCopyWithImpl<_$SignInCredentialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInCredentialImplToJson(
      this,
    );
  }
}

abstract class _SignInCredential implements SignInCredential {
  const factory _SignInCredential(
      {required final String email,
      required final String password}) = _$SignInCredentialImpl;

  factory _SignInCredential.fromJson(Map<String, dynamic> json) =
      _$SignInCredentialImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInCredentialImplCopyWith<_$SignInCredentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
