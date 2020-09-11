// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _LoginEvent login() {
    return const _LoginEvent();
  }

// ignore: unused_element
  _LogoutEvent logout() {
    return const _LogoutEvent();
  }

// ignore: unused_element
  _UserChangedEvent userChanged(UserModel user) {
    return _UserChangedEvent(
      user,
    );
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result logout(),
    @required Result userChanged(UserModel user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result logout(),
    Result userChanged(UserModel user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result userChanged(_UserChangedEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result userChanged(_UserChangedEvent value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class _$LoginEventCopyWith<$Res> {
  factory _$LoginEventCopyWith(
          _LoginEvent value, $Res Function(_LoginEvent) then) =
      __$LoginEventCopyWithImpl<$Res>;
}

class __$LoginEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginEventCopyWith<$Res> {
  __$LoginEventCopyWithImpl(
      _LoginEvent _value, $Res Function(_LoginEvent) _then)
      : super(_value, (v) => _then(v as _LoginEvent));

  @override
  _LoginEvent get _value => super._value as _LoginEvent;
}

class _$_LoginEvent implements _LoginEvent {
  const _$_LoginEvent();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result logout(),
    @required Result userChanged(UserModel user),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(userChanged != null);
    return login();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result logout(),
    Result userChanged(UserModel user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result userChanged(_UserChangedEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(userChanged != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result userChanged(_UserChangedEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements AuthEvent {
  const factory _LoginEvent() = _$_LoginEvent;
}

abstract class _$LogoutEventCopyWith<$Res> {
  factory _$LogoutEventCopyWith(
          _LogoutEvent value, $Res Function(_LogoutEvent) then) =
      __$LogoutEventCopyWithImpl<$Res>;
}

class __$LogoutEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutEventCopyWith<$Res> {
  __$LogoutEventCopyWithImpl(
      _LogoutEvent _value, $Res Function(_LogoutEvent) _then)
      : super(_value, (v) => _then(v as _LogoutEvent));

  @override
  _LogoutEvent get _value => super._value as _LogoutEvent;
}

class _$_LogoutEvent implements _LogoutEvent {
  const _$_LogoutEvent();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result logout(),
    @required Result userChanged(UserModel user),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(userChanged != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result logout(),
    Result userChanged(UserModel user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result userChanged(_UserChangedEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(userChanged != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result userChanged(_UserChangedEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent implements AuthEvent {
  const factory _LogoutEvent() = _$_LogoutEvent;
}

abstract class _$UserChangedEventCopyWith<$Res> {
  factory _$UserChangedEventCopyWith(
          _UserChangedEvent value, $Res Function(_UserChangedEvent) then) =
      __$UserChangedEventCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

class __$UserChangedEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$UserChangedEventCopyWith<$Res> {
  __$UserChangedEventCopyWithImpl(
      _UserChangedEvent _value, $Res Function(_UserChangedEvent) _then)
      : super(_value, (v) => _then(v as _UserChangedEvent));

  @override
  _UserChangedEvent get _value => super._value as _UserChangedEvent;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_UserChangedEvent(
      user == freezed ? _value.user : user as UserModel,
    ));
  }
}

class _$_UserChangedEvent implements _UserChangedEvent {
  const _$_UserChangedEvent(this.user) : assert(user != null);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserChangedEvent &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$UserChangedEventCopyWith<_UserChangedEvent> get copyWith =>
      __$UserChangedEventCopyWithImpl<_UserChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result logout(),
    @required Result userChanged(UserModel user),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(userChanged != null);
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result logout(),
    Result userChanged(UserModel user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result userChanged(_UserChangedEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(userChanged != null);
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result userChanged(_UserChangedEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class _UserChangedEvent implements AuthEvent {
  const factory _UserChangedEvent(UserModel user) = _$_UserChangedEvent;

  UserModel get user;
  _$UserChangedEventCopyWith<_UserChangedEvent> get copyWith;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

// ignore: unused_element
  _Authenticated authenticated(UserModel user) {
    return _Authenticated(
      user,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticated(UserModel user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticated(UserModel user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticated(UserModel user),
  }) {
    assert(unauthenticated != null);
    assert(authenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticated(UserModel user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
  }) {
    assert(unauthenticated != null);
    assert(authenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Authenticated(
      user == freezed ? _value.user : user as UserModel,
    ));
  }
}

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user) : assert(user != null);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticated(UserModel user),
  }) {
    assert(unauthenticated != null);
    assert(authenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticated(UserModel user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
  }) {
    assert(unauthenticated != null);
    assert(authenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(UserModel user) = _$_Authenticated;

  UserModel get user;
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}
