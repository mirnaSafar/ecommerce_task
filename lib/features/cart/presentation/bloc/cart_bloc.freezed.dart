// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) getAllCarts,
    required TResult Function(Cart cart) addProductToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? getAllCarts,
    TResult? Function(Cart cart)? addProductToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? getAllCarts,
    TResult Function(Cart cart)? addProductToCartEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCarts value) getAllCarts,
    required TResult Function(_AddProductToCartEvent value)
        addProductToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCarts value)? getAllCarts,
    TResult? Function(_AddProductToCartEvent value)? addProductToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCarts value)? getAllCarts,
    TResult Function(_AddProductToCartEvent value)? addProductToCartEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllCartsImplCopyWith<$Res> {
  factory _$$GetAllCartsImplCopyWith(
          _$GetAllCartsImpl value, $Res Function(_$GetAllCartsImpl) then) =
      __$$GetAllCartsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$GetAllCartsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetAllCartsImpl>
    implements _$$GetAllCartsImplCopyWith<$Res> {
  __$$GetAllCartsImplCopyWithImpl(
      _$GetAllCartsImpl _value, $Res Function(_$GetAllCartsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetAllCartsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAllCartsImpl implements _GetAllCarts {
  const _$GetAllCartsImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'CartEvent.getAllCarts(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCartsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCartsImplCopyWith<_$GetAllCartsImpl> get copyWith =>
      __$$GetAllCartsImplCopyWithImpl<_$GetAllCartsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) getAllCarts,
    required TResult Function(Cart cart) addProductToCartEvent,
  }) {
    return getAllCarts(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? getAllCarts,
    TResult? Function(Cart cart)? addProductToCartEvent,
  }) {
    return getAllCarts?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? getAllCarts,
    TResult Function(Cart cart)? addProductToCartEvent,
    required TResult orElse(),
  }) {
    if (getAllCarts != null) {
      return getAllCarts(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCarts value) getAllCarts,
    required TResult Function(_AddProductToCartEvent value)
        addProductToCartEvent,
  }) {
    return getAllCarts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCarts value)? getAllCarts,
    TResult? Function(_AddProductToCartEvent value)? addProductToCartEvent,
  }) {
    return getAllCarts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCarts value)? getAllCarts,
    TResult Function(_AddProductToCartEvent value)? addProductToCartEvent,
    required TResult orElse(),
  }) {
    if (getAllCarts != null) {
      return getAllCarts(this);
    }
    return orElse();
  }
}

abstract class _GetAllCarts implements CartEvent {
  const factory _GetAllCarts({required final int userId}) = _$GetAllCartsImpl;

  int get userId;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllCartsImplCopyWith<_$GetAllCartsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartEventImplCopyWith<$Res> {
  factory _$$AddProductToCartEventImplCopyWith(
          _$AddProductToCartEventImpl value,
          $Res Function(_$AddProductToCartEventImpl) then) =
      __$$AddProductToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cart cart});
}

/// @nodoc
class __$$AddProductToCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddProductToCartEventImpl>
    implements _$$AddProductToCartEventImplCopyWith<$Res> {
  __$$AddProductToCartEventImplCopyWithImpl(_$AddProductToCartEventImpl _value,
      $Res Function(_$AddProductToCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$AddProductToCartEventImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }
}

/// @nodoc

class _$AddProductToCartEventImpl implements _AddProductToCartEvent {
  const _$AddProductToCartEventImpl(this.cart);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartEvent.addProductToCartEvent(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartEventImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => __$$AddProductToCartEventImplCopyWithImpl<
          _$AddProductToCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) getAllCarts,
    required TResult Function(Cart cart) addProductToCartEvent,
  }) {
    return addProductToCartEvent(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? getAllCarts,
    TResult? Function(Cart cart)? addProductToCartEvent,
  }) {
    return addProductToCartEvent?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? getAllCarts,
    TResult Function(Cart cart)? addProductToCartEvent,
    required TResult orElse(),
  }) {
    if (addProductToCartEvent != null) {
      return addProductToCartEvent(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCarts value) getAllCarts,
    required TResult Function(_AddProductToCartEvent value)
        addProductToCartEvent,
  }) {
    return addProductToCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCarts value)? getAllCarts,
    TResult? Function(_AddProductToCartEvent value)? addProductToCartEvent,
  }) {
    return addProductToCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCarts value)? getAllCarts,
    TResult Function(_AddProductToCartEvent value)? addProductToCartEvent,
    required TResult orElse(),
  }) {
    if (addProductToCartEvent != null) {
      return addProductToCartEvent(this);
    }
    return orElse();
  }
}

abstract class _AddProductToCartEvent implements CartEvent {
  const factory _AddProductToCartEvent(final Cart cart) =
      _$AddProductToCartEventImpl;

  Cart get cart;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() addToCartLoading,
    required TResult Function(List<ModifiedCart> carts) loaded,
    required TResult Function(String message) error,
    required TResult Function(Cart cart) addProductToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? addToCartLoading,
    TResult? Function(List<ModifiedCart> carts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(Cart cart)? addProductToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? addToCartLoading,
    TResult Function(List<ModifiedCart> carts)? loaded,
    TResult Function(String message)? error,
    TResult Function(Cart cart)? addProductToCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddToCartLoading value) addToCartLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToCartSuccess value)
        addProductToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddToCartLoading value)? addToCartLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AddToCartLoading value)? addToCartLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() addToCartLoading,
    required TResult Function(List<ModifiedCart> carts) loaded,
    required TResult Function(String message) error,
    required TResult Function(Cart cart) addProductToCartSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? addToCartLoading,
    TResult? Function(List<ModifiedCart> carts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(Cart cart)? addProductToCartSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? addToCartLoading,
    TResult Function(List<ModifiedCart> carts)? loaded,
    TResult Function(String message)? error,
    TResult Function(Cart cart)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddToCartLoading value) addToCartLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToCartSuccess value)
        addProductToCartSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddToCartLoading value)? addToCartLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AddToCartLoading value)? addToCartLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AddToCartLoadingImplCopyWith<$Res> {
  factory _$$AddToCartLoadingImplCopyWith(_$AddToCartLoadingImpl value,
          $Res Function(_$AddToCartLoadingImpl) then) =
      __$$AddToCartLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToCartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddToCartLoadingImpl>
    implements _$$AddToCartLoadingImplCopyWith<$Res> {
  __$$AddToCartLoadingImplCopyWithImpl(_$AddToCartLoadingImpl _value,
      $Res Function(_$AddToCartLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddToCartLoadingImpl implements _AddToCartLoading {
  const _$AddToCartLoadingImpl();

  @override
  String toString() {
    return 'CartState.addToCartLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToCartLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() addToCartLoading,
    required TResult Function(List<ModifiedCart> carts) loaded,
    required TResult Function(String message) error,
    required TResult Function(Cart cart) addProductToCartSuccess,
  }) {
    return addToCartLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? addToCartLoading,
    TResult? Function(List<ModifiedCart> carts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(Cart cart)? addProductToCartSuccess,
  }) {
    return addToCartLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? addToCartLoading,
    TResult Function(List<ModifiedCart> carts)? loaded,
    TResult Function(String message)? error,
    TResult Function(Cart cart)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartLoading != null) {
      return addToCartLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddToCartLoading value) addToCartLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToCartSuccess value)
        addProductToCartSuccess,
  }) {
    return addToCartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddToCartLoading value)? addToCartLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
  }) {
    return addToCartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AddToCartLoading value)? addToCartLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartLoading != null) {
      return addToCartLoading(this);
    }
    return orElse();
  }
}

abstract class _AddToCartLoading implements CartState {
  const factory _AddToCartLoading() = _$AddToCartLoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ModifiedCart> carts});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = null,
  }) {
    return _then(_$LoadedImpl(
      null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<ModifiedCart>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<ModifiedCart> carts) : _carts = carts;

  final List<ModifiedCart> _carts;
  @override
  List<ModifiedCart> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  String toString() {
    return 'CartState.loaded(carts: $carts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_carts));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() addToCartLoading,
    required TResult Function(List<ModifiedCart> carts) loaded,
    required TResult Function(String message) error,
    required TResult Function(Cart cart) addProductToCartSuccess,
  }) {
    return loaded(carts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? addToCartLoading,
    TResult? Function(List<ModifiedCart> carts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(Cart cart)? addProductToCartSuccess,
  }) {
    return loaded?.call(carts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? addToCartLoading,
    TResult Function(List<ModifiedCart> carts)? loaded,
    TResult Function(String message)? error,
    TResult Function(Cart cart)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(carts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddToCartLoading value) addToCartLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToCartSuccess value)
        addProductToCartSuccess,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddToCartLoading value)? addToCartLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AddToCartLoading value)? addToCartLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded(final List<ModifiedCart> carts) = _$LoadedImpl;

  List<ModifiedCart> get carts;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() addToCartLoading,
    required TResult Function(List<ModifiedCart> carts) loaded,
    required TResult Function(String message) error,
    required TResult Function(Cart cart) addProductToCartSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? addToCartLoading,
    TResult? Function(List<ModifiedCart> carts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(Cart cart)? addProductToCartSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? addToCartLoading,
    TResult Function(List<ModifiedCart> carts)? loaded,
    TResult Function(String message)? error,
    TResult Function(Cart cart)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddToCartLoading value) addToCartLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToCartSuccess value)
        addProductToCartSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddToCartLoading value)? addToCartLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AddToCartLoading value)? addToCartLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartSuccessImplCopyWith<$Res> {
  factory _$$AddProductToCartSuccessImplCopyWith(
          _$AddProductToCartSuccessImpl value,
          $Res Function(_$AddProductToCartSuccessImpl) then) =
      __$$AddProductToCartSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cart cart});
}

/// @nodoc
class __$$AddProductToCartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddProductToCartSuccessImpl>
    implements _$$AddProductToCartSuccessImplCopyWith<$Res> {
  __$$AddProductToCartSuccessImplCopyWithImpl(
      _$AddProductToCartSuccessImpl _value,
      $Res Function(_$AddProductToCartSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$AddProductToCartSuccessImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }
}

/// @nodoc

class _$AddProductToCartSuccessImpl implements _AddProductToCartSuccess {
  const _$AddProductToCartSuccessImpl(this.cart);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState.addProductToCartSuccess(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartSuccessImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartSuccessImplCopyWith<_$AddProductToCartSuccessImpl>
      get copyWith => __$$AddProductToCartSuccessImplCopyWithImpl<
          _$AddProductToCartSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() addToCartLoading,
    required TResult Function(List<ModifiedCart> carts) loaded,
    required TResult Function(String message) error,
    required TResult Function(Cart cart) addProductToCartSuccess,
  }) {
    return addProductToCartSuccess(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? addToCartLoading,
    TResult? Function(List<ModifiedCart> carts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(Cart cart)? addProductToCartSuccess,
  }) {
    return addProductToCartSuccess?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? addToCartLoading,
    TResult Function(List<ModifiedCart> carts)? loaded,
    TResult Function(String message)? error,
    TResult Function(Cart cart)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (addProductToCartSuccess != null) {
      return addProductToCartSuccess(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddToCartLoading value) addToCartLoading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddProductToCartSuccess value)
        addProductToCartSuccess,
  }) {
    return addProductToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddToCartLoading value)? addToCartLoading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
  }) {
    return addProductToCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AddToCartLoading value)? addToCartLoading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddProductToCartSuccess value)? addProductToCartSuccess,
    required TResult orElse(),
  }) {
    if (addProductToCartSuccess != null) {
      return addProductToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddProductToCartSuccess implements CartState {
  const factory _AddProductToCartSuccess(final Cart cart) =
      _$AddProductToCartSuccessImpl;

  Cart get cart;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartSuccessImplCopyWith<_$AddProductToCartSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
