// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isAscending) sortPatients,
    required TResult Function(String fullName) searchPatients,
    required TResult Function(int patientId) loadPatientHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isAscending)? sortPatients,
    TResult? Function(String fullName)? searchPatients,
    TResult? Function(int patientId)? loadPatientHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isAscending)? sortPatients,
    TResult Function(String fullName)? searchPatients,
    TResult Function(int patientId)? loadPatientHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortPatients value) sortPatients,
    required TResult Function(SearchPatients value) searchPatients,
    required TResult Function(LoadPatientHistory value) loadPatientHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortPatients value)? sortPatients,
    TResult? Function(SearchPatients value)? searchPatients,
    TResult? Function(LoadPatientHistory value)? loadPatientHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortPatients value)? sortPatients,
    TResult Function(SearchPatients value)? searchPatients,
    TResult Function(LoadPatientHistory value)? loadPatientHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientSearchEventCopyWith<$Res> {
  factory $PatientSearchEventCopyWith(
          PatientSearchEvent value, $Res Function(PatientSearchEvent) then) =
      _$PatientSearchEventCopyWithImpl<$Res, PatientSearchEvent>;
}

/// @nodoc
class _$PatientSearchEventCopyWithImpl<$Res, $Val extends PatientSearchEvent>
    implements $PatientSearchEventCopyWith<$Res> {
  _$PatientSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PatientSearchEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isAscending) sortPatients,
    required TResult Function(String fullName) searchPatients,
    required TResult Function(int patientId) loadPatientHistory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isAscending)? sortPatients,
    TResult? Function(String fullName)? searchPatients,
    TResult? Function(int patientId)? loadPatientHistory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isAscending)? sortPatients,
    TResult Function(String fullName)? searchPatients,
    TResult Function(int patientId)? loadPatientHistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortPatients value) sortPatients,
    required TResult Function(SearchPatients value) searchPatients,
    required TResult Function(LoadPatientHistory value) loadPatientHistory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortPatients value)? sortPatients,
    TResult? Function(SearchPatients value)? searchPatients,
    TResult? Function(LoadPatientHistory value)? loadPatientHistory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortPatients value)? sortPatients,
    TResult Function(SearchPatients value)? searchPatients,
    TResult Function(LoadPatientHistory value)? loadPatientHistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements PatientSearchEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SortPatientsImplCopyWith<$Res> {
  factory _$$SortPatientsImplCopyWith(
          _$SortPatientsImpl value, $Res Function(_$SortPatientsImpl) then) =
      __$$SortPatientsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAscending});
}

/// @nodoc
class __$$SortPatientsImplCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res, _$SortPatientsImpl>
    implements _$$SortPatientsImplCopyWith<$Res> {
  __$$SortPatientsImplCopyWithImpl(
      _$SortPatientsImpl _value, $Res Function(_$SortPatientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAscending = null,
  }) {
    return _then(_$SortPatientsImpl(
      null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SortPatientsImpl implements SortPatients {
  const _$SortPatientsImpl(this.isAscending);

  @override
  final bool isAscending;

  @override
  String toString() {
    return 'PatientSearchEvent.sortPatients(isAscending: $isAscending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortPatientsImpl &&
            (identical(other.isAscending, isAscending) ||
                other.isAscending == isAscending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAscending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortPatientsImplCopyWith<_$SortPatientsImpl> get copyWith =>
      __$$SortPatientsImplCopyWithImpl<_$SortPatientsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isAscending) sortPatients,
    required TResult Function(String fullName) searchPatients,
    required TResult Function(int patientId) loadPatientHistory,
  }) {
    return sortPatients(isAscending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isAscending)? sortPatients,
    TResult? Function(String fullName)? searchPatients,
    TResult? Function(int patientId)? loadPatientHistory,
  }) {
    return sortPatients?.call(isAscending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isAscending)? sortPatients,
    TResult Function(String fullName)? searchPatients,
    TResult Function(int patientId)? loadPatientHistory,
    required TResult orElse(),
  }) {
    if (sortPatients != null) {
      return sortPatients(isAscending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortPatients value) sortPatients,
    required TResult Function(SearchPatients value) searchPatients,
    required TResult Function(LoadPatientHistory value) loadPatientHistory,
  }) {
    return sortPatients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortPatients value)? sortPatients,
    TResult? Function(SearchPatients value)? searchPatients,
    TResult? Function(LoadPatientHistory value)? loadPatientHistory,
  }) {
    return sortPatients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortPatients value)? sortPatients,
    TResult Function(SearchPatients value)? searchPatients,
    TResult Function(LoadPatientHistory value)? loadPatientHistory,
    required TResult orElse(),
  }) {
    if (sortPatients != null) {
      return sortPatients(this);
    }
    return orElse();
  }
}

abstract class SortPatients implements PatientSearchEvent {
  const factory SortPatients(final bool isAscending) = _$SortPatientsImpl;

  bool get isAscending;
  @JsonKey(ignore: true)
  _$$SortPatientsImplCopyWith<_$SortPatientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchPatientsImplCopyWith<$Res> {
  factory _$$SearchPatientsImplCopyWith(_$SearchPatientsImpl value,
          $Res Function(_$SearchPatientsImpl) then) =
      __$$SearchPatientsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$SearchPatientsImplCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res, _$SearchPatientsImpl>
    implements _$$SearchPatientsImplCopyWith<$Res> {
  __$$SearchPatientsImplCopyWithImpl(
      _$SearchPatientsImpl _value, $Res Function(_$SearchPatientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$SearchPatientsImpl(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchPatientsImpl implements SearchPatients {
  const _$SearchPatientsImpl(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'PatientSearchEvent.searchPatients(fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPatientsImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPatientsImplCopyWith<_$SearchPatientsImpl> get copyWith =>
      __$$SearchPatientsImplCopyWithImpl<_$SearchPatientsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isAscending) sortPatients,
    required TResult Function(String fullName) searchPatients,
    required TResult Function(int patientId) loadPatientHistory,
  }) {
    return searchPatients(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isAscending)? sortPatients,
    TResult? Function(String fullName)? searchPatients,
    TResult? Function(int patientId)? loadPatientHistory,
  }) {
    return searchPatients?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isAscending)? sortPatients,
    TResult Function(String fullName)? searchPatients,
    TResult Function(int patientId)? loadPatientHistory,
    required TResult orElse(),
  }) {
    if (searchPatients != null) {
      return searchPatients(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortPatients value) sortPatients,
    required TResult Function(SearchPatients value) searchPatients,
    required TResult Function(LoadPatientHistory value) loadPatientHistory,
  }) {
    return searchPatients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortPatients value)? sortPatients,
    TResult? Function(SearchPatients value)? searchPatients,
    TResult? Function(LoadPatientHistory value)? loadPatientHistory,
  }) {
    return searchPatients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortPatients value)? sortPatients,
    TResult Function(SearchPatients value)? searchPatients,
    TResult Function(LoadPatientHistory value)? loadPatientHistory,
    required TResult orElse(),
  }) {
    if (searchPatients != null) {
      return searchPatients(this);
    }
    return orElse();
  }
}

abstract class SearchPatients implements PatientSearchEvent {
  const factory SearchPatients(final String fullName) = _$SearchPatientsImpl;

  String get fullName;
  @JsonKey(ignore: true)
  _$$SearchPatientsImplCopyWith<_$SearchPatientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadPatientHistoryImplCopyWith<$Res> {
  factory _$$LoadPatientHistoryImplCopyWith(_$LoadPatientHistoryImpl value,
          $Res Function(_$LoadPatientHistoryImpl) then) =
      __$$LoadPatientHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int patientId});
}

/// @nodoc
class __$$LoadPatientHistoryImplCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res, _$LoadPatientHistoryImpl>
    implements _$$LoadPatientHistoryImplCopyWith<$Res> {
  __$$LoadPatientHistoryImplCopyWithImpl(_$LoadPatientHistoryImpl _value,
      $Res Function(_$LoadPatientHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
  }) {
    return _then(_$LoadPatientHistoryImpl(
      null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadPatientHistoryImpl implements LoadPatientHistory {
  const _$LoadPatientHistoryImpl(this.patientId);

  @override
  final int patientId;

  @override
  String toString() {
    return 'PatientSearchEvent.loadPatientHistory(patientId: $patientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPatientHistoryImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPatientHistoryImplCopyWith<_$LoadPatientHistoryImpl> get copyWith =>
      __$$LoadPatientHistoryImplCopyWithImpl<_$LoadPatientHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isAscending) sortPatients,
    required TResult Function(String fullName) searchPatients,
    required TResult Function(int patientId) loadPatientHistory,
  }) {
    return loadPatientHistory(patientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isAscending)? sortPatients,
    TResult? Function(String fullName)? searchPatients,
    TResult? Function(int patientId)? loadPatientHistory,
  }) {
    return loadPatientHistory?.call(patientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isAscending)? sortPatients,
    TResult Function(String fullName)? searchPatients,
    TResult Function(int patientId)? loadPatientHistory,
    required TResult orElse(),
  }) {
    if (loadPatientHistory != null) {
      return loadPatientHistory(patientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SortPatients value) sortPatients,
    required TResult Function(SearchPatients value) searchPatients,
    required TResult Function(LoadPatientHistory value) loadPatientHistory,
  }) {
    return loadPatientHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SortPatients value)? sortPatients,
    TResult? Function(SearchPatients value)? searchPatients,
    TResult? Function(LoadPatientHistory value)? loadPatientHistory,
  }) {
    return loadPatientHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SortPatients value)? sortPatients,
    TResult Function(SearchPatients value)? searchPatients,
    TResult Function(LoadPatientHistory value)? loadPatientHistory,
    required TResult orElse(),
  }) {
    if (loadPatientHistory != null) {
      return loadPatientHistory(this);
    }
    return orElse();
  }
}

abstract class LoadPatientHistory implements PatientSearchEvent {
  const factory LoadPatientHistory(final int patientId) =
      _$LoadPatientHistoryImpl;

  int get patientId;
  @JsonKey(ignore: true)
  _$$LoadPatientHistoryImplCopyWith<_$LoadPatientHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
