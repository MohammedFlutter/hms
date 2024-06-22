// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpCredential _$SignUpCredentialFromJson(Map<String, dynamic> json) {
  return _SignUpCredential.fromJson(json);
}

/// @nodoc
mixin _$SignUpCredential {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpCredentialCopyWith<SignUpCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCredentialCopyWith<$Res> {
  factory $SignUpCredentialCopyWith(
          SignUpCredential value, $Res Function(SignUpCredential) then) =
      _$SignUpCredentialCopyWithImpl<$Res, SignUpCredential>;
  @useResult
  $Res call({String firstname, String lastname, String email, String password});
}

/// @nodoc
class _$SignUpCredentialCopyWithImpl<$Res, $Val extends SignUpCredential>
    implements $SignUpCredentialCopyWith<$Res> {
  _$SignUpCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$SignUpCredentialImplCopyWith<$Res>
    implements $SignUpCredentialCopyWith<$Res> {
  factory _$$SignUpCredentialImplCopyWith(_$SignUpCredentialImpl value,
          $Res Function(_$SignUpCredentialImpl) then) =
      __$$SignUpCredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstname, String lastname, String email, String password});
}

/// @nodoc
class __$$SignUpCredentialImplCopyWithImpl<$Res>
    extends _$SignUpCredentialCopyWithImpl<$Res, _$SignUpCredentialImpl>
    implements _$$SignUpCredentialImplCopyWith<$Res> {
  __$$SignUpCredentialImplCopyWithImpl(_$SignUpCredentialImpl _value,
      $Res Function(_$SignUpCredentialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpCredentialImpl(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$SignUpCredentialImpl implements _SignUpCredential {
  const _$SignUpCredentialImpl(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.password});

  factory _$SignUpCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpCredentialImplFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpCredential(firstname: $firstname, lastname: $lastname, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpCredentialImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstname, lastname, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpCredentialImplCopyWith<_$SignUpCredentialImpl> get copyWith =>
      __$$SignUpCredentialImplCopyWithImpl<_$SignUpCredentialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpCredentialImplToJson(
      this,
    );
  }
}

abstract class _SignUpCredential implements SignUpCredential {
  const factory _SignUpCredential(
      {required final String firstname,
      required final String lastname,
      required final String email,
      required final String password}) = _$SignUpCredentialImpl;

  factory _SignUpCredential.fromJson(Map<String, dynamic> json) =
      _$SignUpCredentialImpl.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpCredentialImplCopyWith<_$SignUpCredentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
