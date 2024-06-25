// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientSearchState {
  PatientHistory? get patientHistory => throw _privateConstructorUsedError;
  List<Patient> get patients => throw _privateConstructorUsedError;
  bool get isAscending => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  PatientSearchStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientSearchStateCopyWith<PatientSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientSearchStateCopyWith<$Res> {
  factory $PatientSearchStateCopyWith(
          PatientSearchState value, $Res Function(PatientSearchState) then) =
      _$PatientSearchStateCopyWithImpl<$Res, PatientSearchState>;
  @useResult
  $Res call(
      {PatientHistory? patientHistory,
      List<Patient> patients,
      bool isAscending,
      String searchQuery,
      String errorMessage,
      PatientSearchStatus status});

  $PatientHistoryCopyWith<$Res>? get patientHistory;
}

/// @nodoc
class _$PatientSearchStateCopyWithImpl<$Res, $Val extends PatientSearchState>
    implements $PatientSearchStateCopyWith<$Res> {
  _$PatientSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientHistory = freezed,
    Object? patients = null,
    Object? isAscending = null,
    Object? searchQuery = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      patientHistory: freezed == patientHistory
          ? _value.patientHistory
          : patientHistory // ignore: cast_nullable_to_non_nullable
              as PatientHistory?,
      patients: null == patients
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      isAscending: null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PatientSearchStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientHistoryCopyWith<$Res>? get patientHistory {
    if (_value.patientHistory == null) {
      return null;
    }

    return $PatientHistoryCopyWith<$Res>(_value.patientHistory!, (value) {
      return _then(_value.copyWith(patientHistory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientSearchStateImplCopyWith<$Res>
    implements $PatientSearchStateCopyWith<$Res> {
  factory _$$PatientSearchStateImplCopyWith(_$PatientSearchStateImpl value,
          $Res Function(_$PatientSearchStateImpl) then) =
      __$$PatientSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PatientHistory? patientHistory,
      List<Patient> patients,
      bool isAscending,
      String searchQuery,
      String errorMessage,
      PatientSearchStatus status});

  @override
  $PatientHistoryCopyWith<$Res>? get patientHistory;
}

/// @nodoc
class __$$PatientSearchStateImplCopyWithImpl<$Res>
    extends _$PatientSearchStateCopyWithImpl<$Res, _$PatientSearchStateImpl>
    implements _$$PatientSearchStateImplCopyWith<$Res> {
  __$$PatientSearchStateImplCopyWithImpl(_$PatientSearchStateImpl _value,
      $Res Function(_$PatientSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientHistory = freezed,
    Object? patients = null,
    Object? isAscending = null,
    Object? searchQuery = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_$PatientSearchStateImpl(
      patientHistory: freezed == patientHistory
          ? _value.patientHistory
          : patientHistory // ignore: cast_nullable_to_non_nullable
              as PatientHistory?,
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      isAscending: null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PatientSearchStatus,
    ));
  }
}

/// @nodoc

class _$PatientSearchStateImpl implements _PatientSearchState {
  const _$PatientSearchStateImpl(
      {this.patientHistory = null,
      final List<Patient> patients = const [],
      this.isAscending = true,
      this.searchQuery = '',
      this.errorMessage = '',
      this.status = PatientSearchStatus.initial})
      : _patients = patients;

  @override
  @JsonKey()
  final PatientHistory? patientHistory;
  final List<Patient> _patients;
  @override
  @JsonKey()
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  @JsonKey()
  final bool isAscending;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final PatientSearchStatus status;

  @override
  String toString() {
    return 'PatientSearchState(patientHistory: $patientHistory, patients: $patients, isAscending: $isAscending, searchQuery: $searchQuery, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientSearchStateImpl &&
            (identical(other.patientHistory, patientHistory) ||
                other.patientHistory == patientHistory) &&
            const DeepCollectionEquality().equals(other._patients, _patients) &&
            (identical(other.isAscending, isAscending) ||
                other.isAscending == isAscending) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      patientHistory,
      const DeepCollectionEquality().hash(_patients),
      isAscending,
      searchQuery,
      errorMessage,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientSearchStateImplCopyWith<_$PatientSearchStateImpl> get copyWith =>
      __$$PatientSearchStateImplCopyWithImpl<_$PatientSearchStateImpl>(
          this, _$identity);
}

abstract class _PatientSearchState implements PatientSearchState {
  const factory _PatientSearchState(
      {final PatientHistory? patientHistory,
      final List<Patient> patients,
      final bool isAscending,
      final String searchQuery,
      final String errorMessage,
      final PatientSearchStatus status}) = _$PatientSearchStateImpl;

  @override
  PatientHistory? get patientHistory;
  @override
  List<Patient> get patients;
  @override
  bool get isAscending;
  @override
  String get searchQuery;
  @override
  String get errorMessage;
  @override
  PatientSearchStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$PatientSearchStateImplCopyWith<_$PatientSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
