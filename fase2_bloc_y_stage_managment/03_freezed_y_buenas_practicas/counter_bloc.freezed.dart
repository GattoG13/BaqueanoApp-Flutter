// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementPressed,
    required TResult Function() decrementPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementPressed,
    TResult? Function()? decrementPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementPressed,
    TResult Function()? decrementPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementPressed value) incrementPressed,
    required TResult Function(DecrementPressed value) decrementPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncrementPressed value)? incrementPressed,
    TResult? Function(DecrementPressed value)? decrementPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementPressed value)? incrementPressed,
    TResult Function(DecrementPressed value)? decrementPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
    CounterEvent value,
    $Res Function(CounterEvent) then,
  ) = _$CounterEventCopyWithImpl<$Res, CounterEvent>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res, $Val extends CounterEvent>
    implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CounterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IncrementPressedImplCopyWith<$Res> {
  factory _$$IncrementPressedImplCopyWith(
    _$IncrementPressedImpl value,
    $Res Function(_$IncrementPressedImpl) then,
  ) = __$$IncrementPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementPressedImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$IncrementPressedImpl>
    implements _$$IncrementPressedImplCopyWith<$Res> {
  __$$IncrementPressedImplCopyWithImpl(
    _$IncrementPressedImpl _value,
    $Res Function(_$IncrementPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CounterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPressedImpl implements IncrementPressed {
  const _$IncrementPressedImpl();

  @override
  String toString() {
    return 'CounterEvent.incrementPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncrementPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementPressed,
    required TResult Function() decrementPressed,
  }) {
    return incrementPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementPressed,
    TResult? Function()? decrementPressed,
  }) {
    return incrementPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementPressed,
    TResult Function()? decrementPressed,
    required TResult orElse(),
  }) {
    if (incrementPressed != null) {
      return incrementPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementPressed value) incrementPressed,
    required TResult Function(DecrementPressed value) decrementPressed,
  }) {
    return incrementPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncrementPressed value)? incrementPressed,
    TResult? Function(DecrementPressed value)? decrementPressed,
  }) {
    return incrementPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementPressed value)? incrementPressed,
    TResult Function(DecrementPressed value)? decrementPressed,
    required TResult orElse(),
  }) {
    if (incrementPressed != null) {
      return incrementPressed(this);
    }
    return orElse();
  }
}

abstract class IncrementPressed implements CounterEvent {
  const factory IncrementPressed() = _$IncrementPressedImpl;
}

/// @nodoc
abstract class _$$DecrementPressedImplCopyWith<$Res> {
  factory _$$DecrementPressedImplCopyWith(
    _$DecrementPressedImpl value,
    $Res Function(_$DecrementPressedImpl) then,
  ) = __$$DecrementPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecrementPressedImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$DecrementPressedImpl>
    implements _$$DecrementPressedImplCopyWith<$Res> {
  __$$DecrementPressedImplCopyWithImpl(
    _$DecrementPressedImpl _value,
    $Res Function(_$DecrementPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CounterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DecrementPressedImpl implements DecrementPressed {
  const _$DecrementPressedImpl();

  @override
  String toString() {
    return 'CounterEvent.decrementPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecrementPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementPressed,
    required TResult Function() decrementPressed,
  }) {
    return decrementPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementPressed,
    TResult? Function()? decrementPressed,
  }) {
    return decrementPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementPressed,
    TResult Function()? decrementPressed,
    required TResult orElse(),
  }) {
    if (decrementPressed != null) {
      return decrementPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementPressed value) incrementPressed,
    required TResult Function(DecrementPressed value) decrementPressed,
  }) {
    return decrementPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncrementPressed value)? incrementPressed,
    TResult? Function(DecrementPressed value)? decrementPressed,
  }) {
    return decrementPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementPressed value)? incrementPressed,
    TResult Function(DecrementPressed value)? decrementPressed,
    required TResult orElse(),
  }) {
    if (decrementPressed != null) {
      return decrementPressed(this);
    }
    return orElse();
  }
}

abstract class DecrementPressed implements CounterEvent {
  const factory DecrementPressed() = _$DecrementPressedImpl;
}

/// @nodoc
mixin _$CounterState {
  int get counter => throw _privateConstructorUsedError;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
    CounterState value,
    $Res Function(CounterState) then,
  ) = _$CounterStateCopyWithImpl<$Res, CounterState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? counter = null}) {
    return _then(
      _value.copyWith(
            counter: null == counter
                ? _value.counter
                : counter // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CounterStateImplCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$$CounterStateImplCopyWith(
    _$CounterStateImpl value,
    $Res Function(_$CounterStateImpl) then,
  ) = __$$CounterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$CounterStateImplCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$CounterStateImpl>
    implements _$$CounterStateImplCopyWith<$Res> {
  __$$CounterStateImplCopyWithImpl(
    _$CounterStateImpl _value,
    $Res Function(_$CounterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? counter = null}) {
    return _then(
      _$CounterStateImpl(
        counter: null == counter
            ? _value.counter
            : counter // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CounterStateImpl implements _CounterState {
  const _$CounterStateImpl({required this.counter});

  @override
  final int counter;

  @override
  String toString() {
    return 'CounterState(counter: $counter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterStateImpl &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterStateImplCopyWith<_$CounterStateImpl> get copyWith =>
      __$$CounterStateImplCopyWithImpl<_$CounterStateImpl>(this, _$identity);
}

abstract class _CounterState implements CounterState {
  const factory _CounterState({required final int counter}) =
      _$CounterStateImpl;

  @override
  int get counter;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CounterStateImplCopyWith<_$CounterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
