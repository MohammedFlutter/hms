// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorSearchState {
  List<Doctor> get doctors => throw _privateConstructorUsedError;
  bool get isAscending => throw _privateConstructorUsedError;
  String get selectedSpecializations => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  DoctorStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorSearchStateCopyWith<DoctorSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorSearchStateCopyWith<$Res> {
  factory $DoctorSearchStateCopyWith(
          DoctorSearchState value, $Res Function(DoctorSearchState) then) =
      _$DoctorSearchStateCopyWithImpl<$Res, DoctorSearchState>;
  @useResult
  $Res call(
      {List<Doctor> doctors,
      bool isAscending,
      String selectedSpecializations,
      String searchQuery,
      String errorMessage,
      DoctorStatus status});
}

/// @nodoc
class _$DoctorSearchStateCopyWithImpl<$Res, $Val extends DoctorSearchState>
    implements $DoctorSearchStateCopyWith<$Res> {
  _$DoctorSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
    Object? isAscending = null,
    Object? selectedSpecializations = null,
    Object? searchQuery = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      doctors: null == doctors
          ? _value.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      isAscending: null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedSpecializations: null == selectedSpecializations
          ? _value.selectedSpecializations
          : selectedSpecializations // ignore: cast_nullable_to_non_nullable
              as String,
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
              as DoctorStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorSearchStateImplCopyWith<$Res>
    implements $DoctorSearchStateCopyWith<$Res> {
  factory _$$DoctorSearchStateImplCopyWith(_$DoctorSearchStateImpl value,
          $Res Function(_$DoctorSearchStateImpl) then) =
      __$$DoctorSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Doctor> doctors,
      bool isAscending,
      String selectedSpecializations,
      String searchQuery,
      String errorMessage,
      DoctorStatus status});
}

/// @nodoc
class __$$DoctorSearchStateImplCopyWithImpl<$Res>
    extends _$DoctorSearchStateCopyWithImpl<$Res, _$DoctorSearchStateImpl>
    implements _$$DoctorSearchStateImplCopyWith<$Res> {
  __$$DoctorSearchStateImplCopyWithImpl(_$DoctorSearchStateImpl _value,
      $Res Function(_$DoctorSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
    Object? isAscending = null,
    Object? selectedSpecializations = null,
    Object? searchQuery = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_$DoctorSearchStateImpl(
      doctors: null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      isAscending: null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedSpecializations: null == selectedSpecializations
          ? _value.selectedSpecializations
          : selectedSpecializations // ignore: cast_nullable_to_non_nullable
              as String,
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
              as DoctorStatus,
    ));
  }
}

/// @nodoc

class _$DoctorSearchStateImpl implements _DoctorSearchState {
  const _$DoctorSearchStateImpl(
      {final List<Doctor> doctors = const [],
      this.isAscending = true,
      this.selectedSpecializations = '',
      this.searchQuery = '',
      this.errorMessage = '',
      this.status = DoctorStatus.initial})
      : _doctors = doctors;

  final List<Doctor> _doctors;
  @override
  @JsonKey()
  List<Doctor> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  @JsonKey()
  final bool isAscending;
  @override
  @JsonKey()
  final String selectedSpecializations;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final DoctorStatus status;

  @override
  String toString() {
    return 'DoctorSearchState(doctors: $doctors, isAscending: $isAscending, selectedSpecializations: $selectedSpecializations, searchQuery: $searchQuery, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorSearchStateImpl &&
            const DeepCollectionEquality().equals(other._doctors, _doctors) &&
            (identical(other.isAscending, isAscending) ||
                other.isAscending == isAscending) &&
            (identical(
                    other.selectedSpecializations, selectedSpecializations) ||
                other.selectedSpecializations == selectedSpecializations) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_doctors),
      isAscending,
      selectedSpecializations,
      searchQuery,
      errorMessage,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorSearchStateImplCopyWith<_$DoctorSearchStateImpl> get copyWith =>
      __$$DoctorSearchStateImplCopyWithImpl<_$DoctorSearchStateImpl>(
          this, _$identity);
}

abstract class _DoctorSearchState implements DoctorSearchState {
  const factory _DoctorSearchState(
      {final List<Doctor> doctors,
      final bool isAscending,
      final String selectedSpecializations,
      final String searchQuery,
      final String errorMessage,
      final DoctorStatus status}) = _$DoctorSearchStateImpl;

  @override
  List<Doctor> get doctors;
  @override
  bool get isAscending;
  @override
  String get selectedSpecializations;
  @override
  String get searchQuery;
  @override
  String get errorMessage;
  @override
  DoctorStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$DoctorSearchStateImplCopyWith<_$DoctorSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
