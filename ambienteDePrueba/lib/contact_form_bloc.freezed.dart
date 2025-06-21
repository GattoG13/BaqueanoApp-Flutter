// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ContactFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() formSubmitted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? formSubmitted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactFormEventCopyWith<$Res> {
  factory $ContactFormEventCopyWith(
    ContactFormEvent value,
    $Res Function(ContactFormEvent) then,
  ) = _$ContactFormEventCopyWithImpl<$Res, ContactFormEvent>;
}

/// @nodoc
class _$ContactFormEventCopyWithImpl<$Res, $Val extends ContactFormEvent>
    implements $ContactFormEventCopyWith<$Res> {
  _$ContactFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
    _$NameChangedImpl value,
    $Res Function(_$NameChangedImpl) then,
  ) = __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$ContactFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
    _$NameChangedImpl _value,
    $Res Function(_$NameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$NameChangedImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NameChangedImpl implements NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ContactFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() formSubmitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? formSubmitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ContactFormEvent {
  const factory NameChanged(final String name) = _$NameChangedImpl;

  String get name;

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
    _$EmailChangedImpl value,
    $Res Function(_$EmailChangedImpl) then,
  ) = __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$ContactFormEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
    _$EmailChangedImpl _value,
    $Res Function(_$EmailChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$EmailChangedImpl(
        null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ContactFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() formSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? formSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ContactFormEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageChangedImplCopyWith<$Res> {
  factory _$$MessageChangedImplCopyWith(
    _$MessageChangedImpl value,
    $Res Function(_$MessageChangedImpl) then,
  ) = __$$MessageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageChangedImplCopyWithImpl<$Res>
    extends _$ContactFormEventCopyWithImpl<$Res, _$MessageChangedImpl>
    implements _$$MessageChangedImplCopyWith<$Res> {
  __$$MessageChangedImplCopyWithImpl(
    _$MessageChangedImpl _value,
    $Res Function(_$MessageChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$MessageChangedImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$MessageChangedImpl implements MessageChanged {
  const _$MessageChangedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ContactFormEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageChangedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageChangedImplCopyWith<_$MessageChangedImpl> get copyWith =>
      __$$MessageChangedImplCopyWithImpl<_$MessageChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() formSubmitted,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? formSubmitted,
  }) {
    return messageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements ContactFormEvent {
  const factory MessageChanged(final String message) = _$MessageChangedImpl;

  String get message;

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageChangedImplCopyWith<_$MessageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSubmittedImplCopyWith<$Res> {
  factory _$$FormSubmittedImplCopyWith(
    _$FormSubmittedImpl value,
    $Res Function(_$FormSubmittedImpl) then,
  ) = __$$FormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSubmittedImplCopyWithImpl<$Res>
    extends _$ContactFormEventCopyWithImpl<$Res, _$FormSubmittedImpl>
    implements _$$FormSubmittedImplCopyWith<$Res> {
  __$$FormSubmittedImplCopyWithImpl(
    _$FormSubmittedImpl _value,
    $Res Function(_$FormSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormSubmittedImpl implements FormSubmitted {
  const _$FormSubmittedImpl();

  @override
  String toString() {
    return 'ContactFormEvent.formSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements ContactFormEvent {
  const factory FormSubmitted() = _$FormSubmittedImpl;
}

/// @nodoc
mixin _$ContactFormState {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String message)
    initial,
    required TResult Function(String name, String email, String message)
    validating,
    required TResult Function(String name, String email, String message)
    submitting,
    required TResult Function(String name, String email, String message)
    success,
    required TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String message)? initial,
    TResult? Function(String name, String email, String message)? validating,
    TResult? Function(String name, String email, String message)? submitting,
    TResult? Function(String name, String email, String message)? success,
    TResult? Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String message)? initial,
    TResult Function(String name, String email, String message)? validating,
    TResult Function(String name, String email, String message)? submitting,
    TResult Function(String name, String email, String message)? success,
    TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Validating value) validating,
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Validating value)? validating,
    TResult? Function(Submitting value)? submitting,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Validating value)? validating,
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactFormStateCopyWith<ContactFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactFormStateCopyWith<$Res> {
  factory $ContactFormStateCopyWith(
    ContactFormState value,
    $Res Function(ContactFormState) then,
  ) = _$ContactFormStateCopyWithImpl<$Res, ContactFormState>;
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class _$ContactFormStateCopyWithImpl<$Res, $Val extends ContactFormState>
    implements $ContactFormStateCopyWith<$Res> {
  _$ContactFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ContactFormStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(
      _$InitialImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.name = '', this.email = '', this.message = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactFormState.initial(name: $name, email: $email, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String message)
    initial,
    required TResult Function(String name, String email, String message)
    validating,
    required TResult Function(String name, String email, String message)
    submitting,
    required TResult Function(String name, String email, String message)
    success,
    required TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )
    error,
  }) {
    return initial(name, email, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String message)? initial,
    TResult? Function(String name, String email, String message)? validating,
    TResult? Function(String name, String email, String message)? submitting,
    TResult? Function(String name, String email, String message)? success,
    TResult? Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
  }) {
    return initial?.call(name, email, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String message)? initial,
    TResult Function(String name, String email, String message)? validating,
    TResult Function(String name, String email, String message)? submitting,
    TResult Function(String name, String email, String message)? success,
    TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(name, email, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Validating value) validating,
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Validating value)? validating,
    TResult? Function(Submitting value)? submitting,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Validating value)? validating,
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ContactFormState {
  const factory Initial({
    final String name,
    final String email,
    final String message,
  }) = _$InitialImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get message;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidatingImplCopyWith<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  factory _$$ValidatingImplCopyWith(
    _$ValidatingImpl value,
    $Res Function(_$ValidatingImpl) then,
  ) = __$$ValidatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class __$$ValidatingImplCopyWithImpl<$Res>
    extends _$ContactFormStateCopyWithImpl<$Res, _$ValidatingImpl>
    implements _$$ValidatingImplCopyWith<$Res> {
  __$$ValidatingImplCopyWithImpl(
    _$ValidatingImpl _value,
    $Res Function(_$ValidatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(
      _$ValidatingImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ValidatingImpl implements Validating {
  const _$ValidatingImpl({
    required this.name,
    required this.email,
    required this.message,
  });

  @override
  final String name;
  @override
  final String email;
  @override
  final String message;

  @override
  String toString() {
    return 'ContactFormState.validating(name: $name, email: $email, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidatingImplCopyWith<_$ValidatingImpl> get copyWith =>
      __$$ValidatingImplCopyWithImpl<_$ValidatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String message)
    initial,
    required TResult Function(String name, String email, String message)
    validating,
    required TResult Function(String name, String email, String message)
    submitting,
    required TResult Function(String name, String email, String message)
    success,
    required TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )
    error,
  }) {
    return validating(name, email, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String message)? initial,
    TResult? Function(String name, String email, String message)? validating,
    TResult? Function(String name, String email, String message)? submitting,
    TResult? Function(String name, String email, String message)? success,
    TResult? Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
  }) {
    return validating?.call(name, email, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String message)? initial,
    TResult Function(String name, String email, String message)? validating,
    TResult Function(String name, String email, String message)? submitting,
    TResult Function(String name, String email, String message)? success,
    TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
    required TResult orElse(),
  }) {
    if (validating != null) {
      return validating(name, email, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Validating value) validating,
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return validating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Validating value)? validating,
    TResult? Function(Submitting value)? submitting,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return validating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Validating value)? validating,
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (validating != null) {
      return validating(this);
    }
    return orElse();
  }
}

abstract class Validating implements ContactFormState {
  const factory Validating({
    required final String name,
    required final String email,
    required final String message,
  }) = _$ValidatingImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get message;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidatingImplCopyWith<_$ValidatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(
    _$SubmittingImpl value,
    $Res Function(_$SubmittingImpl) then,
  ) = __$$SubmittingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res>
    extends _$ContactFormStateCopyWithImpl<$Res, _$SubmittingImpl>
    implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(
    _$SubmittingImpl _value,
    $Res Function(_$SubmittingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(
      _$SubmittingImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmittingImpl implements Submitting {
  const _$SubmittingImpl({
    required this.name,
    required this.email,
    required this.message,
  });

  @override
  final String name;
  @override
  final String email;
  @override
  final String message;

  @override
  String toString() {
    return 'ContactFormState.submitting(name: $name, email: $email, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmittingImplCopyWith<_$SubmittingImpl> get copyWith =>
      __$$SubmittingImplCopyWithImpl<_$SubmittingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String message)
    initial,
    required TResult Function(String name, String email, String message)
    validating,
    required TResult Function(String name, String email, String message)
    submitting,
    required TResult Function(String name, String email, String message)
    success,
    required TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )
    error,
  }) {
    return submitting(name, email, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String message)? initial,
    TResult? Function(String name, String email, String message)? validating,
    TResult? Function(String name, String email, String message)? submitting,
    TResult? Function(String name, String email, String message)? success,
    TResult? Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
  }) {
    return submitting?.call(name, email, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String message)? initial,
    TResult Function(String name, String email, String message)? validating,
    TResult Function(String name, String email, String message)? submitting,
    TResult Function(String name, String email, String message)? success,
    TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(name, email, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Validating value) validating,
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Validating value)? validating,
    TResult? Function(Submitting value)? submitting,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Validating value)? validating,
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class Submitting implements ContactFormState {
  const factory Submitting({
    required final String name,
    required final String email,
    required final String message,
  }) = _$SubmittingImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get message;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittingImplCopyWith<_$SubmittingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ContactFormStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(
      _$SuccessImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({
    required this.name,
    required this.email,
    required this.message,
  });

  @override
  final String name;
  @override
  final String email;
  @override
  final String message;

  @override
  String toString() {
    return 'ContactFormState.success(name: $name, email: $email, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String message)
    initial,
    required TResult Function(String name, String email, String message)
    validating,
    required TResult Function(String name, String email, String message)
    submitting,
    required TResult Function(String name, String email, String message)
    success,
    required TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )
    error,
  }) {
    return success(name, email, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String message)? initial,
    TResult? Function(String name, String email, String message)? validating,
    TResult? Function(String name, String email, String message)? submitting,
    TResult? Function(String name, String email, String message)? success,
    TResult? Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
  }) {
    return success?.call(name, email, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String message)? initial,
    TResult Function(String name, String email, String message)? validating,
    TResult Function(String name, String email, String message)? submitting,
    TResult Function(String name, String email, String message)? success,
    TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(name, email, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Validating value) validating,
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Validating value)? validating,
    TResult? Function(Submitting value)? submitting,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Validating value)? validating,
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ContactFormState {
  const factory Success({
    required final String name,
    required final String email,
    required final String message,
  }) = _$SuccessImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get message;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String message, String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ContactFormStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
    Object? errorMessage = null,
  }) {
    return _then(
      _$ErrorImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({
    required this.name,
    required this.email,
    required this.message,
    required this.errorMessage,
  });

  @override
  final String name;
  @override
  final String email;
  @override
  final String message;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContactFormState.error(name: $name, email: $email, message: $message, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, message, errorMessage);

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String message)
    initial,
    required TResult Function(String name, String email, String message)
    validating,
    required TResult Function(String name, String email, String message)
    submitting,
    required TResult Function(String name, String email, String message)
    success,
    required TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )
    error,
  }) {
    return error(name, email, message, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String message)? initial,
    TResult? Function(String name, String email, String message)? validating,
    TResult? Function(String name, String email, String message)? submitting,
    TResult? Function(String name, String email, String message)? success,
    TResult? Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
  }) {
    return error?.call(name, email, message, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String message)? initial,
    TResult Function(String name, String email, String message)? validating,
    TResult Function(String name, String email, String message)? submitting,
    TResult Function(String name, String email, String message)? success,
    TResult Function(
      String name,
      String email,
      String message,
      String errorMessage,
    )?
    error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(name, email, message, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Validating value) validating,
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Validating value)? validating,
    TResult? Function(Submitting value)? submitting,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Validating value)? validating,
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ContactFormState {
  const factory Error({
    required final String name,
    required final String email,
    required final String message,
    required final String errorMessage,
  }) = _$ErrorImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get message;
  String get errorMessage;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
