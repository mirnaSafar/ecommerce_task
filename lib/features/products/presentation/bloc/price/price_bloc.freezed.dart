// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceEvent {
  double get price => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double price) setInitialPrice,
    required TResult Function(double price, int quantity) updatePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double price)? setInitialPrice,
    TResult? Function(double price, int quantity)? updatePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double price)? setInitialPrice,
    TResult Function(double price, int quantity)? updatePrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetInitialPrice value) setInitialPrice,
    required TResult Function(_UpdatePrice value) updatePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetInitialPrice value)? setInitialPrice,
    TResult? Function(_UpdatePrice value)? updatePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetInitialPrice value)? setInitialPrice,
    TResult Function(_UpdatePrice value)? updatePrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PriceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceEventCopyWith<PriceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceEventCopyWith<$Res> {
  factory $PriceEventCopyWith(
          PriceEvent value, $Res Function(PriceEvent) then) =
      _$PriceEventCopyWithImpl<$Res, PriceEvent>;
  @useResult
  $Res call({double price});
}

/// @nodoc
class _$PriceEventCopyWithImpl<$Res, $Val extends PriceEvent>
    implements $PriceEventCopyWith<$Res> {
  _$PriceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetInitialPriceImplCopyWith<$Res>
    implements $PriceEventCopyWith<$Res> {
  factory _$$SetInitialPriceImplCopyWith(_$SetInitialPriceImpl value,
          $Res Function(_$SetInitialPriceImpl) then) =
      __$$SetInitialPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$SetInitialPriceImplCopyWithImpl<$Res>
    extends _$PriceEventCopyWithImpl<$Res, _$SetInitialPriceImpl>
    implements _$$SetInitialPriceImplCopyWith<$Res> {
  __$$SetInitialPriceImplCopyWithImpl(
      _$SetInitialPriceImpl _value, $Res Function(_$SetInitialPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$SetInitialPriceImpl(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetInitialPriceImpl implements _SetInitialPrice {
  const _$SetInitialPriceImpl(this.price);

  @override
  final double price;

  @override
  String toString() {
    return 'PriceEvent.setInitialPrice(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInitialPriceImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of PriceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInitialPriceImplCopyWith<_$SetInitialPriceImpl> get copyWith =>
      __$$SetInitialPriceImplCopyWithImpl<_$SetInitialPriceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double price) setInitialPrice,
    required TResult Function(double price, int quantity) updatePrice,
  }) {
    return setInitialPrice(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double price)? setInitialPrice,
    TResult? Function(double price, int quantity)? updatePrice,
  }) {
    return setInitialPrice?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double price)? setInitialPrice,
    TResult Function(double price, int quantity)? updatePrice,
    required TResult orElse(),
  }) {
    if (setInitialPrice != null) {
      return setInitialPrice(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetInitialPrice value) setInitialPrice,
    required TResult Function(_UpdatePrice value) updatePrice,
  }) {
    return setInitialPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetInitialPrice value)? setInitialPrice,
    TResult? Function(_UpdatePrice value)? updatePrice,
  }) {
    return setInitialPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetInitialPrice value)? setInitialPrice,
    TResult Function(_UpdatePrice value)? updatePrice,
    required TResult orElse(),
  }) {
    if (setInitialPrice != null) {
      return setInitialPrice(this);
    }
    return orElse();
  }
}

abstract class _SetInitialPrice implements PriceEvent {
  const factory _SetInitialPrice(final double price) = _$SetInitialPriceImpl;

  @override
  double get price;

  /// Create a copy of PriceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetInitialPriceImplCopyWith<_$SetInitialPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePriceImplCopyWith<$Res>
    implements $PriceEventCopyWith<$Res> {
  factory _$$UpdatePriceImplCopyWith(
          _$UpdatePriceImpl value, $Res Function(_$UpdatePriceImpl) then) =
      __$$UpdatePriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price, int quantity});
}

/// @nodoc
class __$$UpdatePriceImplCopyWithImpl<$Res>
    extends _$PriceEventCopyWithImpl<$Res, _$UpdatePriceImpl>
    implements _$$UpdatePriceImplCopyWith<$Res> {
  __$$UpdatePriceImplCopyWithImpl(
      _$UpdatePriceImpl _value, $Res Function(_$UpdatePriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdatePriceImpl(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatePriceImpl implements _UpdatePrice {
  const _$UpdatePriceImpl(this.price, this.quantity);

  @override
  final double price;
  @override
  final int quantity;

  @override
  String toString() {
    return 'PriceEvent.updatePrice(price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePriceImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price, quantity);

  /// Create a copy of PriceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePriceImplCopyWith<_$UpdatePriceImpl> get copyWith =>
      __$$UpdatePriceImplCopyWithImpl<_$UpdatePriceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double price) setInitialPrice,
    required TResult Function(double price, int quantity) updatePrice,
  }) {
    return updatePrice(price, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double price)? setInitialPrice,
    TResult? Function(double price, int quantity)? updatePrice,
  }) {
    return updatePrice?.call(price, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double price)? setInitialPrice,
    TResult Function(double price, int quantity)? updatePrice,
    required TResult orElse(),
  }) {
    if (updatePrice != null) {
      return updatePrice(price, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetInitialPrice value) setInitialPrice,
    required TResult Function(_UpdatePrice value) updatePrice,
  }) {
    return updatePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetInitialPrice value)? setInitialPrice,
    TResult? Function(_UpdatePrice value)? updatePrice,
  }) {
    return updatePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetInitialPrice value)? setInitialPrice,
    TResult Function(_UpdatePrice value)? updatePrice,
    required TResult orElse(),
  }) {
    if (updatePrice != null) {
      return updatePrice(this);
    }
    return orElse();
  }
}

abstract class _UpdatePrice implements PriceEvent {
  const factory _UpdatePrice(final double price, final int quantity) =
      _$UpdatePriceImpl;

  @override
  double get price;
  int get quantity;

  /// Create a copy of PriceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePriceImplCopyWith<_$UpdatePriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PriceState {
  double get price => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double price) initial,
    required TResult Function(double price) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double price)? initial,
    TResult? Function(double price)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double price)? initial,
    TResult Function(double price)? updated,
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

  /// Create a copy of PriceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceStateCopyWith<PriceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceStateCopyWith<$Res> {
  factory $PriceStateCopyWith(
          PriceState value, $Res Function(PriceState) then) =
      _$PriceStateCopyWithImpl<$Res, PriceState>;
  @useResult
  $Res call({double price});
}

/// @nodoc
class _$PriceStateCopyWithImpl<$Res, $Val extends PriceState>
    implements $PriceStateCopyWith<$Res> {
  _$PriceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PriceStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PriceStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$InitialImpl(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.price);

  @override
  final double price;

  @override
  String toString() {
    return 'PriceState.initial(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of PriceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double price) initial,
    required TResult Function(double price) updated,
  }) {
    return initial(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double price)? initial,
    TResult? Function(double price)? updated,
  }) {
    return initial?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double price)? initial,
    TResult Function(double price)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(price);
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

abstract class _Initial implements PriceState {
  const factory _Initial(final double price) = _$InitialImpl;

  @override
  double get price;

  /// Create a copy of PriceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res>
    implements $PriceStateCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$PriceStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$UpdatedImpl(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.price);

  @override
  final double price;

  @override
  String toString() {
    return 'PriceState.updated(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of PriceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double price) initial,
    required TResult Function(double price) updated,
  }) {
    return updated(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double price)? initial,
    TResult? Function(double price)? updated,
  }) {
    return updated?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double price)? initial,
    TResult Function(double price)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(price);
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

abstract class _Updated implements PriceState {
  const factory _Updated(final double price) = _$UpdatedImpl;

  @override
  double get price;

  /// Create a copy of PriceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
