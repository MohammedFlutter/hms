// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadDoctor,
    required TResult Function(String searchQuery) searchDoctors,
    required TResult Function(bool isAscending) sortDoctors,
    required TResult Function(String? selectedSpecializations)
        filterDoctorsBySpecializations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDoctor,
    TResult? Function(String searchQuery)? searchDoctors,
    TResult? Function(bool isAscending)? sortDoctors,
    TResult? Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDoctor,
    TResult Function(String searchQuery)? searchDoctors,
    TResult Function(bool isAscending)? sortDoctors,
    TResult Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadDoctor value) loadDoctor,
    required TResult Function(_SearchDoctors value) searchDoctors,
    required TResult Function(_SortDoctors value) sortDoctors,
    required TResult Function(_FilterDoctors value)
        filterDoctorsBySpecializations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadDoctor value)? loadDoctor,
    TResult? Function(_SearchDoctors value)? searchDoctors,
    TResult? Function(_SortDoctors value)? sortDoctors,
    TResult? Function(_FilterDoctors value)? filterDoctorsBySpecializations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadDoctor value)? loadDoctor,
    TResult Function(_SearchDoctors value)? searchDoctors,
    TResult Function(_SortDoctors value)? sortDoctors,
    TResult Function(_FilterDoctors value)? filterDoctorsBySpecializations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorSearchEventCopyWith<$Res> {
  factory $DoctorSearchEventCopyWith(
          DoctorSearchEvent value, $Res Function(DoctorSearchEvent) then) =
      _$DoctorSearchEventCopyWithImpl<$Res, DoctorSearchEvent>;
}

/// @nodoc
class _$DoctorSearchEventCopyWithImpl<$Res, $Val extends DoctorSearchEvent>
    implements $DoctorSearchEventCopyWith<$Res> {
  _$DoctorSearchEventCopyWithImpl(this._value, this._then);

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
    extends _$DoctorSearchEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DoctorSearchEvent.started()';
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
    required TResult Function() loadDoctor,
    required TResult Function(String searchQuery) searchDoctors,
    required TResult Function(bool isAscending) sortDoctors,
    required TResult Function(String? selectedSpecializations)
        filterDoctorsBySpecializations,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDoctor,
    TResult? Function(String searchQuery)? searchDoctors,
    TResult? Function(bool isAscending)? sortDoctors,
    TResult? Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDoctor,
    TResult Function(String searchQuery)? searchDoctors,
    TResult Function(bool isAscending)? sortDoctors,
    TResult Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
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
    required TResult Function(_Started value) started,
    required TResult Function(_LoadDoctor value) loadDoctor,
    required TResult Function(_SearchDoctors value) searchDoctors,
    required TResult Function(_SortDoctors value) sortDoctors,
    required TResult Function(_FilterDoctors value)
        filterDoctorsBySpecializations,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadDoctor value)? loadDoctor,
    TResult? Function(_SearchDoctors value)? searchDoctors,
    TResult? Function(_SortDoctors value)? sortDoctors,
    TResult? Function(_FilterDoctors value)? filterDoctorsBySpecializations,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadDoctor value)? loadDoctor,
    TResult Function(_SearchDoctors value)? searchDoctors,
    TResult Function(_SortDoctors value)? sortDoctors,
    TResult Function(_FilterDoctors value)? filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DoctorSearchEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadDoctorImplCopyWith<$Res> {
  factory _$$LoadDoctorImplCopyWith(
          _$LoadDoctorImpl value, $Res Function(_$LoadDoctorImpl) then) =
      __$$LoadDoctorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDoctorImplCopyWithImpl<$Res>
    extends _$DoctorSearchEventCopyWithImpl<$Res, _$LoadDoctorImpl>
    implements _$$LoadDoctorImplCopyWith<$Res> {
  __$$LoadDoctorImplCopyWithImpl(
      _$LoadDoctorImpl _value, $Res Function(_$LoadDoctorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDoctorImpl implements _LoadDoctor {
  const _$LoadDoctorImpl();

  @override
  String toString() {
    return 'DoctorSearchEvent.loadDoctor()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDoctorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadDoctor,
    required TResult Function(String searchQuery) searchDoctors,
    required TResult Function(bool isAscending) sortDoctors,
    required TResult Function(String? selectedSpecializations)
        filterDoctorsBySpecializations,
  }) {
    return loadDoctor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDoctor,
    TResult? Function(String searchQuery)? searchDoctors,
    TResult? Function(bool isAscending)? sortDoctors,
    TResult? Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
  }) {
    return loadDoctor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDoctor,
    TResult Function(String searchQuery)? searchDoctors,
    TResult Function(bool isAscending)? sortDoctors,
    TResult Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (loadDoctor != null) {
      return loadDoctor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadDoctor value) loadDoctor,
    required TResult Function(_SearchDoctors value) searchDoctors,
    required TResult Function(_SortDoctors value) sortDoctors,
    required TResult Function(_FilterDoctors value)
        filterDoctorsBySpecializations,
  }) {
    return loadDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadDoctor value)? loadDoctor,
    TResult? Function(_SearchDoctors value)? searchDoctors,
    TResult? Function(_SortDoctors value)? sortDoctors,
    TResult? Function(_FilterDoctors value)? filterDoctorsBySpecializations,
  }) {
    return loadDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadDoctor value)? loadDoctor,
    TResult Function(_SearchDoctors value)? searchDoctors,
    TResult Function(_SortDoctors value)? sortDoctors,
    TResult Function(_FilterDoctors value)? filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (loadDoctor != null) {
      return loadDoctor(this);
    }
    return orElse();
  }
}

abstract class _LoadDoctor implements DoctorSearchEvent {
  const factory _LoadDoctor() = _$LoadDoctorImpl;
}

/// @nodoc
abstract class _$$SearchDoctorsImplCopyWith<$Res> {
  factory _$$SearchDoctorsImplCopyWith(
          _$SearchDoctorsImpl value, $Res Function(_$SearchDoctorsImpl) then) =
      __$$SearchDoctorsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$SearchDoctorsImplCopyWithImpl<$Res>
    extends _$DoctorSearchEventCopyWithImpl<$Res, _$SearchDoctorsImpl>
    implements _$$SearchDoctorsImplCopyWith<$Res> {
  __$$SearchDoctorsImplCopyWithImpl(
      _$SearchDoctorsImpl _value, $Res Function(_$SearchDoctorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$SearchDoctorsImpl(
      null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchDoctorsImpl implements _SearchDoctors {
  const _$SearchDoctorsImpl(this.searchQuery);

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'DoctorSearchEvent.searchDoctors(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDoctorsImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDoctorsImplCopyWith<_$SearchDoctorsImpl> get copyWith =>
      __$$SearchDoctorsImplCopyWithImpl<_$SearchDoctorsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadDoctor,
    required TResult Function(String searchQuery) searchDoctors,
    required TResult Function(bool isAscending) sortDoctors,
    required TResult Function(String? selectedSpecializations)
        filterDoctorsBySpecializations,
  }) {
    return searchDoctors(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDoctor,
    TResult? Function(String searchQuery)? searchDoctors,
    TResult? Function(bool isAscending)? sortDoctors,
    TResult? Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
  }) {
    return searchDoctors?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDoctor,
    TResult Function(String searchQuery)? searchDoctors,
    TResult Function(bool isAscending)? sortDoctors,
    TResult Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (searchDoctors != null) {
      return searchDoctors(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadDoctor value) loadDoctor,
    required TResult Function(_SearchDoctors value) searchDoctors,
    required TResult Function(_SortDoctors value) sortDoctors,
    required TResult Function(_FilterDoctors value)
        filterDoctorsBySpecializations,
  }) {
    return searchDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadDoctor value)? loadDoctor,
    TResult? Function(_SearchDoctors value)? searchDoctors,
    TResult? Function(_SortDoctors value)? sortDoctors,
    TResult? Function(_FilterDoctors value)? filterDoctorsBySpecializations,
  }) {
    return searchDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadDoctor value)? loadDoctor,
    TResult Function(_SearchDoctors value)? searchDoctors,
    TResult Function(_SortDoctors value)? sortDoctors,
    TResult Function(_FilterDoctors value)? filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (searchDoctors != null) {
      return searchDoctors(this);
    }
    return orElse();
  }
}

abstract class _SearchDoctors implements DoctorSearchEvent {
  const factory _SearchDoctors(final String searchQuery) = _$SearchDoctorsImpl;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$SearchDoctorsImplCopyWith<_$SearchDoctorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortDoctorsImplCopyWith<$Res> {
  factory _$$SortDoctorsImplCopyWith(
          _$SortDoctorsImpl value, $Res Function(_$SortDoctorsImpl) then) =
      __$$SortDoctorsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAscending});
}

/// @nodoc
class __$$SortDoctorsImplCopyWithImpl<$Res>
    extends _$DoctorSearchEventCopyWithImpl<$Res, _$SortDoctorsImpl>
    implements _$$SortDoctorsImplCopyWith<$Res> {
  __$$SortDoctorsImplCopyWithImpl(
      _$SortDoctorsImpl _value, $Res Function(_$SortDoctorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAscending = null,
  }) {
    return _then(_$SortDoctorsImpl(
      null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SortDoctorsImpl implements _SortDoctors {
  const _$SortDoctorsImpl(this.isAscending);

  @override
  final bool isAscending;

  @override
  String toString() {
    return 'DoctorSearchEvent.sortDoctors(isAscending: $isAscending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortDoctorsImpl &&
            (identical(other.isAscending, isAscending) ||
                other.isAscending == isAscending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAscending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortDoctorsImplCopyWith<_$SortDoctorsImpl> get copyWith =>
      __$$SortDoctorsImplCopyWithImpl<_$SortDoctorsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadDoctor,
    required TResult Function(String searchQuery) searchDoctors,
    required TResult Function(bool isAscending) sortDoctors,
    required TResult Function(String? selectedSpecializations)
        filterDoctorsBySpecializations,
  }) {
    return sortDoctors(isAscending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDoctor,
    TResult? Function(String searchQuery)? searchDoctors,
    TResult? Function(bool isAscending)? sortDoctors,
    TResult? Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
  }) {
    return sortDoctors?.call(isAscending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDoctor,
    TResult Function(String searchQuery)? searchDoctors,
    TResult Function(bool isAscending)? sortDoctors,
    TResult Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (sortDoctors != null) {
      return sortDoctors(isAscending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadDoctor value) loadDoctor,
    required TResult Function(_SearchDoctors value) searchDoctors,
    required TResult Function(_SortDoctors value) sortDoctors,
    required TResult Function(_FilterDoctors value)
        filterDoctorsBySpecializations,
  }) {
    return sortDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadDoctor value)? loadDoctor,
    TResult? Function(_SearchDoctors value)? searchDoctors,
    TResult? Function(_SortDoctors value)? sortDoctors,
    TResult? Function(_FilterDoctors value)? filterDoctorsBySpecializations,
  }) {
    return sortDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadDoctor value)? loadDoctor,
    TResult Function(_SearchDoctors value)? searchDoctors,
    TResult Function(_SortDoctors value)? sortDoctors,
    TResult Function(_FilterDoctors value)? filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (sortDoctors != null) {
      return sortDoctors(this);
    }
    return orElse();
  }
}

abstract class _SortDoctors implements DoctorSearchEvent {
  const factory _SortDoctors(final bool isAscending) = _$SortDoctorsImpl;

  bool get isAscending;
  @JsonKey(ignore: true)
  _$$SortDoctorsImplCopyWith<_$SortDoctorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterDoctorsImplCopyWith<$Res> {
  factory _$$FilterDoctorsImplCopyWith(
          _$FilterDoctorsImpl value, $Res Function(_$FilterDoctorsImpl) then) =
      __$$FilterDoctorsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? selectedSpecializations});
}

/// @nodoc
class __$$FilterDoctorsImplCopyWithImpl<$Res>
    extends _$DoctorSearchEventCopyWithImpl<$Res, _$FilterDoctorsImpl>
    implements _$$FilterDoctorsImplCopyWith<$Res> {
  __$$FilterDoctorsImplCopyWithImpl(
      _$FilterDoctorsImpl _value, $Res Function(_$FilterDoctorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSpecializations = freezed,
  }) {
    return _then(_$FilterDoctorsImpl(
      freezed == selectedSpecializations
          ? _value.selectedSpecializations
          : selectedSpecializations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterDoctorsImpl implements _FilterDoctors {
  const _$FilterDoctorsImpl(this.selectedSpecializations);

  @override
  final String? selectedSpecializations;

  @override
  String toString() {
    return 'DoctorSearchEvent.filterDoctorsBySpecializations(selectedSpecializations: $selectedSpecializations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterDoctorsImpl &&
            (identical(
                    other.selectedSpecializations, selectedSpecializations) ||
                other.selectedSpecializations == selectedSpecializations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSpecializations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterDoctorsImplCopyWith<_$FilterDoctorsImpl> get copyWith =>
      __$$FilterDoctorsImplCopyWithImpl<_$FilterDoctorsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadDoctor,
    required TResult Function(String searchQuery) searchDoctors,
    required TResult Function(bool isAscending) sortDoctors,
    required TResult Function(String? selectedSpecializations)
        filterDoctorsBySpecializations,
  }) {
    return filterDoctorsBySpecializations(selectedSpecializations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadDoctor,
    TResult? Function(String searchQuery)? searchDoctors,
    TResult? Function(bool isAscending)? sortDoctors,
    TResult? Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
  }) {
    return filterDoctorsBySpecializations?.call(selectedSpecializations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadDoctor,
    TResult Function(String searchQuery)? searchDoctors,
    TResult Function(bool isAscending)? sortDoctors,
    TResult Function(String? selectedSpecializations)?
        filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (filterDoctorsBySpecializations != null) {
      return filterDoctorsBySpecializations(selectedSpecializations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadDoctor value) loadDoctor,
    required TResult Function(_SearchDoctors value) searchDoctors,
    required TResult Function(_SortDoctors value) sortDoctors,
    required TResult Function(_FilterDoctors value)
        filterDoctorsBySpecializations,
  }) {
    return filterDoctorsBySpecializations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadDoctor value)? loadDoctor,
    TResult? Function(_SearchDoctors value)? searchDoctors,
    TResult? Function(_SortDoctors value)? sortDoctors,
    TResult? Function(_FilterDoctors value)? filterDoctorsBySpecializations,
  }) {
    return filterDoctorsBySpecializations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadDoctor value)? loadDoctor,
    TResult Function(_SearchDoctors value)? searchDoctors,
    TResult Function(_SortDoctors value)? sortDoctors,
    TResult Function(_FilterDoctors value)? filterDoctorsBySpecializations,
    required TResult orElse(),
  }) {
    if (filterDoctorsBySpecializations != null) {
      return filterDoctorsBySpecializations(this);
    }
    return orElse();
  }
}

abstract class _FilterDoctors implements DoctorSearchEvent {
  const factory _FilterDoctors(final String? selectedSpecializations) =
      _$FilterDoctorsImpl;

  String? get selectedSpecializations;
  @JsonKey(ignore: true)
  _$$FilterDoctorsImplCopyWith<_$FilterDoctorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
