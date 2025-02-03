// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calc_total_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalcTotalEvent {
  List<ModifiedCart> get carts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ModifiedCart> carts) calcTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ModifiedCart> carts)? calcTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ModifiedCart> carts)? calcTotal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalcTotal value) calcTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalcTotal value)? calcTotal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalcTotal value)? calcTotal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CalcTotalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalcTotalEventCopyWith<CalcTotalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcTotalEventCopyWith<$Res> {
  factory $CalcTotalEventCopyWith(
          CalcTotalEvent value, $Res Function(CalcTotalEvent) then) =
      _$CalcTotalEventCopyWithImpl<$Res, CalcTotalEvent>;
  @useResult
  $Res call({List<ModifiedCart> carts});
}

/// @nodoc
class _$CalcTotalEventCopyWithImpl<$Res, $Val extends CalcTotalEvent>
    implements $CalcTotalEventCopyWith<$Res> {
  _$CalcTotalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalcTotalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = null,
  }) {
    return _then(_value.copyWith(
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<ModifiedCart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalcTotalImplCopyWith<$Res>
    implements $CalcTotalEventCopyWith<$Res> {
  factory _$$CalcTotalImplCopyWith(
          _$CalcTotalImpl value, $Res Function(_$CalcTotalImpl) then) =
      __$$CalcTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ModifiedCart> carts});
}

/// @nodoc
class __$$CalcTotalImplCopyWithImpl<$Res>
    extends _$CalcTotalEventCopyWithImpl<$Res, _$CalcTotalImpl>
    implements _$$CalcTotalImplCopyWith<$Res> {
  __$$CalcTotalImplCopyWithImpl(
      _$CalcTotalImpl _value, $Res Function(_$CalcTotalImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalcTotalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = null,
  }) {
    return _then(_$CalcTotalImpl(
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<ModifiedCart>,
    ));
  }
}

/// @nodoc

class _$CalcTotalImpl implements _CalcTotal {
  const _$CalcTotalImpl({required final List<ModifiedCart> carts})
      : _carts = carts;

  final List<ModifiedCart> _carts;
  @override
  List<ModifiedCart> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  String toString() {
    return 'CalcTotalEvent.calcTotal(carts: $carts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalcTotalImpl &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_carts));

  /// Create a copy of CalcTotalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalcTotalImplCopyWith<_$CalcTotalImpl> get copyWith =>
      __$$CalcTotalImplCopyWithImpl<_$CalcTotalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ModifiedCart> carts) calcTotal,
  }) {
    return calcTotal(carts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ModifiedCart> carts)? calcTotal,
  }) {
    return calcTotal?.call(carts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ModifiedCart> carts)? calcTotal,
    required TResult orElse(),
  }) {
    if (calcTotal != null) {
      return calcTotal(carts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalcTotal value) calcTotal,
  }) {
    return calcTotal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalcTotal value)? calcTotal,
  }) {
    return calcTotal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalcTotal value)? calcTotal,
    required TResult orElse(),
  }) {
    if (calcTotal != null) {
      return calcTotal(this);
    }
    return orElse();
  }
}

abstract class _CalcTotal implements CalcTotalEvent {
  const factory _CalcTotal({required final List<ModifiedCart> carts}) =
      _$CalcTotalImpl;

  @override
  List<ModifiedCart> get carts;

  /// Create a copy of CalcTotalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalcTotalImplCopyWith<_$CalcTotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalcTotalState {
  double get total => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double total) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double total)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double total)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CalcTotalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalcTotalStateCopyWith<CalcTotalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcTotalStateCopyWith<$Res> {
  factory $CalcTotalStateCopyWith(
          CalcTotalState value, $Res Function(CalcTotalState) then) =
      _$CalcTotalStateCopyWithImpl<$Res, CalcTotalState>;
  @useResult
  $Res call({double total});
}

/// @nodoc
class _$CalcTotalStateCopyWithImpl<$Res, $Val extends CalcTotalState>
    implements $CalcTotalStateCopyWith<$Res> {
  _$CalcTotalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalcTotalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CalcTotalStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double total});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CalcTotalStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalcTotalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_$InitialImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.total});

  @override
  final double total;

  @override
  String toString() {
    return 'CalcTotalState.initial(total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total);

  /// Create a copy of CalcTotalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double total) initial,
  }) {
    return initial(total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double total)? initial,
  }) {
    return initial?.call(total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double total)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CalcTotalState {
  const factory _Initial({required final double total}) = _$InitialImpl;

  @override
  double get total;

  /// Create a copy of CalcTotalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
