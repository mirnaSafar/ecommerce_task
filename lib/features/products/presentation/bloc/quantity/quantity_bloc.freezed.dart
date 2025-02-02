// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quantity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuantityEvent {
  int get quantity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity) setInitialQuantity,
    required TResult Function(int quantity) updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity)? setInitialQuantity,
    TResult? Function(int quantity)? updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity)? setInitialQuantity,
    TResult Function(int quantity)? updateQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetInitialQuantity value) setInitialQuantity,
    required TResult Function(_UpdatedQuantity value) updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetInitialQuantity value)? setInitialQuantity,
    TResult? Function(_UpdatedQuantity value)? updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetInitialQuantity value)? setInitialQuantity,
    TResult Function(_UpdatedQuantity value)? updateQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuantityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuantityEventCopyWith<QuantityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityEventCopyWith<$Res> {
  factory $QuantityEventCopyWith(
          QuantityEvent value, $Res Function(QuantityEvent) then) =
      _$QuantityEventCopyWithImpl<$Res, QuantityEvent>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class _$QuantityEventCopyWithImpl<$Res, $Val extends QuantityEvent>
    implements $QuantityEventCopyWith<$Res> {
  _$QuantityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuantityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetInitialQuantityImplCopyWith<$Res>
    implements $QuantityEventCopyWith<$Res> {
  factory _$$SetInitialQuantityImplCopyWith(_$SetInitialQuantityImpl value,
          $Res Function(_$SetInitialQuantityImpl) then) =
      __$$SetInitialQuantityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$SetInitialQuantityImplCopyWithImpl<$Res>
    extends _$QuantityEventCopyWithImpl<$Res, _$SetInitialQuantityImpl>
    implements _$$SetInitialQuantityImplCopyWith<$Res> {
  __$$SetInitialQuantityImplCopyWithImpl(_$SetInitialQuantityImpl _value,
      $Res Function(_$SetInitialQuantityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuantityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$SetInitialQuantityImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetInitialQuantityImpl implements _SetInitialQuantity {
  const _$SetInitialQuantityImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'QuantityEvent.setInitialQuantity(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInitialQuantityImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  /// Create a copy of QuantityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInitialQuantityImplCopyWith<_$SetInitialQuantityImpl> get copyWith =>
      __$$SetInitialQuantityImplCopyWithImpl<_$SetInitialQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity) setInitialQuantity,
    required TResult Function(int quantity) updateQuantity,
  }) {
    return setInitialQuantity(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity)? setInitialQuantity,
    TResult? Function(int quantity)? updateQuantity,
  }) {
    return setInitialQuantity?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity)? setInitialQuantity,
    TResult Function(int quantity)? updateQuantity,
    required TResult orElse(),
  }) {
    if (setInitialQuantity != null) {
      return setInitialQuantity(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetInitialQuantity value) setInitialQuantity,
    required TResult Function(_UpdatedQuantity value) updateQuantity,
  }) {
    return setInitialQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetInitialQuantity value)? setInitialQuantity,
    TResult? Function(_UpdatedQuantity value)? updateQuantity,
  }) {
    return setInitialQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetInitialQuantity value)? setInitialQuantity,
    TResult Function(_UpdatedQuantity value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (setInitialQuantity != null) {
      return setInitialQuantity(this);
    }
    return orElse();
  }
}

abstract class _SetInitialQuantity implements QuantityEvent {
  const factory _SetInitialQuantity(final int quantity) =
      _$SetInitialQuantityImpl;

  @override
  int get quantity;

  /// Create a copy of QuantityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetInitialQuantityImplCopyWith<_$SetInitialQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedQuantityImplCopyWith<$Res>
    implements $QuantityEventCopyWith<$Res> {
  factory _$$UpdatedQuantityImplCopyWith(_$UpdatedQuantityImpl value,
          $Res Function(_$UpdatedQuantityImpl) then) =
      __$$UpdatedQuantityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$UpdatedQuantityImplCopyWithImpl<$Res>
    extends _$QuantityEventCopyWithImpl<$Res, _$UpdatedQuantityImpl>
    implements _$$UpdatedQuantityImplCopyWith<$Res> {
  __$$UpdatedQuantityImplCopyWithImpl(
      _$UpdatedQuantityImpl _value, $Res Function(_$UpdatedQuantityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuantityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$UpdatedQuantityImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatedQuantityImpl implements _UpdatedQuantity {
  const _$UpdatedQuantityImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'QuantityEvent.updateQuantity(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedQuantityImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  /// Create a copy of QuantityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedQuantityImplCopyWith<_$UpdatedQuantityImpl> get copyWith =>
      __$$UpdatedQuantityImplCopyWithImpl<_$UpdatedQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity) setInitialQuantity,
    required TResult Function(int quantity) updateQuantity,
  }) {
    return updateQuantity(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity)? setInitialQuantity,
    TResult? Function(int quantity)? updateQuantity,
  }) {
    return updateQuantity?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity)? setInitialQuantity,
    TResult Function(int quantity)? updateQuantity,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetInitialQuantity value) setInitialQuantity,
    required TResult Function(_UpdatedQuantity value) updateQuantity,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetInitialQuantity value)? setInitialQuantity,
    TResult? Function(_UpdatedQuantity value)? updateQuantity,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetInitialQuantity value)? setInitialQuantity,
    TResult Function(_UpdatedQuantity value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class _UpdatedQuantity implements QuantityEvent {
  const factory _UpdatedQuantity(final int quantity) = _$UpdatedQuantityImpl;

  @override
  int get quantity;

  /// Create a copy of QuantityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedQuantityImplCopyWith<_$UpdatedQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuantityState {
  int get quantity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity) initial,
    required TResult Function(int quantity) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity)? initial,
    TResult? Function(int quantity)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity)? initial,
    TResult Function(int quantity)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuantityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuantityStateCopyWith<QuantityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityStateCopyWith<$Res> {
  factory $QuantityStateCopyWith(
          QuantityState value, $Res Function(QuantityState) then) =
      _$QuantityStateCopyWithImpl<$Res, QuantityState>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class _$QuantityStateCopyWithImpl<$Res, $Val extends QuantityState>
    implements $QuantityStateCopyWith<$Res> {
  _$QuantityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuantityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $QuantityStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuantityStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuantityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$InitialImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'QuantityState.initial(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  /// Create a copy of QuantityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity) initial,
    required TResult Function(int quantity) updated,
  }) {
    return initial(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity)? initial,
    TResult? Function(int quantity)? updated,
  }) {
    return initial?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity)? initial,
    TResult Function(int quantity)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updated value) updated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updated value)? updated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuantityState {
  const factory _Initial(final int quantity) = _$InitialImpl;

  @override
  int get quantity;

  /// Create a copy of QuantityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res>
    implements $QuantityStateCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$QuantityStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuantityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$UpdatedImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'QuantityState.updated(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  /// Create a copy of QuantityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity) initial,
    required TResult Function(int quantity) updated,
  }) {
    return updated(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity)? initial,
    TResult? Function(int quantity)? updated,
  }) {
    return updated?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity)? initial,
    TResult Function(int quantity)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements QuantityState {
  const factory _Updated(final int quantity) = _$UpdatedImpl;

  @override
  int get quantity;

  /// Create a copy of QuantityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
