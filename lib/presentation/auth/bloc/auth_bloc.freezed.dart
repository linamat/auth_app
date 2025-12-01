// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(AuthTabType tab) tabChange,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function() forgotPassword,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(AuthTabType tab)? tabChange,
    TResult? Function(UserModel user)? login,
    TResult? Function(UserModel user)? signup,
    TResult? Function()? forgotPassword,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(AuthTabType tab)? tabChange,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function()? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_Login value) login,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_Login value)? login,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_Login value)? login,
    TResult Function(_Signup value)? signup,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentUserImplCopyWith<$Res> {
  factory _$$GetCurrentUserImplCopyWith(_$GetCurrentUserImpl value,
          $Res Function(_$GetCurrentUserImpl) then) =
      __$$GetCurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCurrentUserImpl>
    implements _$$GetCurrentUserImplCopyWith<$Res> {
  __$$GetCurrentUserImplCopyWithImpl(
      _$GetCurrentUserImpl _value, $Res Function(_$GetCurrentUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentUserImpl implements _GetCurrentUser {
  const _$GetCurrentUserImpl();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(AuthTabType tab) tabChange,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function() forgotPassword,
    required TResult Function() logout,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(AuthTabType tab)? tabChange,
    TResult? Function(UserModel user)? login,
    TResult? Function(UserModel user)? signup,
    TResult? Function()? forgotPassword,
    TResult? Function()? logout,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(AuthTabType tab)? tabChange,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function()? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_Login value) login,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_Login value)? login,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_Login value)? login,
    TResult Function(_Signup value)? signup,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUser implements AuthEvent {
  const factory _GetCurrentUser() = _$GetCurrentUserImpl;
}

/// @nodoc
abstract class _$$TabChangeImplCopyWith<$Res> {
  factory _$$TabChangeImplCopyWith(
          _$TabChangeImpl value, $Res Function(_$TabChangeImpl) then) =
      __$$TabChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthTabType tab});
}

/// @nodoc
class __$$TabChangeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$TabChangeImpl>
    implements _$$TabChangeImplCopyWith<$Res> {
  __$$TabChangeImplCopyWithImpl(
      _$TabChangeImpl _value, $Res Function(_$TabChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$TabChangeImpl(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as AuthTabType,
    ));
  }
}

/// @nodoc

class _$TabChangeImpl implements _TabChange {
  const _$TabChangeImpl({required this.tab});

  @override
  final AuthTabType tab;

  @override
  String toString() {
    return 'AuthEvent.tabChange(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangeImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      __$$TabChangeImplCopyWithImpl<_$TabChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(AuthTabType tab) tabChange,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function() forgotPassword,
    required TResult Function() logout,
  }) {
    return tabChange(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(AuthTabType tab)? tabChange,
    TResult? Function(UserModel user)? login,
    TResult? Function(UserModel user)? signup,
    TResult? Function()? forgotPassword,
    TResult? Function()? logout,
  }) {
    return tabChange?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(AuthTabType tab)? tabChange,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function()? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_Login value) login,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return tabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_Login value)? login,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return tabChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_Login value)? login,
    TResult Function(_Signup value)? signup,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(this);
    }
    return orElse();
  }
}

abstract class _TabChange implements AuthEvent {
  const factory _TabChange({required final AuthTabType tab}) = _$TabChangeImpl;

  AuthTabType get tab;
  @JsonKey(ignore: true)
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvent.login(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(AuthTabType tab) tabChange,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function() forgotPassword,
    required TResult Function() logout,
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(AuthTabType tab)? tabChange,
    TResult? Function(UserModel user)? login,
    TResult? Function(UserModel user)? signup,
    TResult? Function()? forgotPassword,
    TResult? Function()? logout,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(AuthTabType tab)? tabChange,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function()? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_Login value) login,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_Login value)? login,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_Login value)? login,
    TResult Function(_Signup value)? signup,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login({required final UserModel user}) = _$LoginImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupImplCopyWith<$Res> {
  factory _$$SignupImplCopyWith(
          _$SignupImpl value, $Res Function(_$SignupImpl) then) =
      __$$SignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignupImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignupImpl>
    implements _$$SignupImplCopyWith<$Res> {
  __$$SignupImplCopyWithImpl(
      _$SignupImpl _value, $Res Function(_$SignupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignupImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SignupImpl implements _Signup {
  const _$SignupImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvent.signup(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      __$$SignupImplCopyWithImpl<_$SignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(AuthTabType tab) tabChange,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function() forgotPassword,
    required TResult Function() logout,
  }) {
    return signup(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(AuthTabType tab)? tabChange,
    TResult? Function(UserModel user)? login,
    TResult? Function(UserModel user)? signup,
    TResult? Function()? forgotPassword,
    TResult? Function()? logout,
  }) {
    return signup?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(AuthTabType tab)? tabChange,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function()? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_Login value) login,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_Login value)? login,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_Login value)? login,
    TResult Function(_Signup value)? signup,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _Signup implements AuthEvent {
  const factory _Signup({required final UserModel user}) = _$SignupImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordImpl implements _ForgotPassword {
  const _$ForgotPasswordImpl();

  @override
  String toString() {
    return 'AuthEvent.forgotPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForgotPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(AuthTabType tab) tabChange,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function() forgotPassword,
    required TResult Function() logout,
  }) {
    return forgotPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(AuthTabType tab)? tabChange,
    TResult? Function(UserModel user)? login,
    TResult? Function(UserModel user)? signup,
    TResult? Function()? forgotPassword,
    TResult? Function()? logout,
  }) {
    return forgotPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(AuthTabType tab)? tabChange,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function()? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_Login value) login,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_Login value)? login,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_Login value)? login,
    TResult Function(_Signup value)? signup,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthEvent {
  const factory _ForgotPassword() = _$ForgotPasswordImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(AuthTabType tab) tabChange,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function() forgotPassword,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(AuthTabType tab)? tabChange,
    TResult? Function(UserModel user)? login,
    TResult? Function(UserModel user)? signup,
    TResult? Function()? forgotPassword,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(AuthTabType tab)? tabChange,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function()? forgotPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_Login value) login,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_Login value)? login,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_Login value)? login,
    TResult Function(_Signup value)? signup,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$AuthState {
  AuthTabType get selectedTab => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  UserModel? get authenticatedUser => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthTabType selectedTab,
      bool initialized,
      bool isSubmitting,
      bool hasError,
      UserModel? authenticatedUser,
      String? message});

  $UserModelCopyWith<$Res>? get authenticatedUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? initialized = null,
    Object? isSubmitting = null,
    Object? hasError = null,
    Object? authenticatedUser = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as AuthTabType,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticatedUser: freezed == authenticatedUser
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get authenticatedUser {
    if (_value.authenticatedUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.authenticatedUser!, (value) {
      return _then(_value.copyWith(authenticatedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthTabType selectedTab,
      bool initialized,
      bool isSubmitting,
      bool hasError,
      UserModel? authenticatedUser,
      String? message});

  @override
  $UserModelCopyWith<$Res>? get authenticatedUser;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? initialized = null,
    Object? isSubmitting = null,
    Object? hasError = null,
    Object? authenticatedUser = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AuthStateImpl(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as AuthTabType,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticatedUser: freezed == authenticatedUser
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.selectedTab = AuthTabType.login,
      this.initialized = false,
      this.isSubmitting = false,
      this.hasError = false,
      this.authenticatedUser,
      this.message});

  @override
  @JsonKey()
  final AuthTabType selectedTab;
  @override
  @JsonKey()
  final bool initialized;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool hasError;
  @override
  final UserModel? authenticatedUser;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState(selectedTab: $selectedTab, initialized: $initialized, isSubmitting: $isSubmitting, hasError: $hasError, authenticatedUser: $authenticatedUser, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.authenticatedUser, authenticatedUser) ||
                other.authenticatedUser == authenticatedUser) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab, initialized,
      isSubmitting, hasError, authenticatedUser, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final AuthTabType selectedTab,
      final bool initialized,
      final bool isSubmitting,
      final bool hasError,
      final UserModel? authenticatedUser,
      final String? message}) = _$AuthStateImpl;

  @override
  AuthTabType get selectedTab;
  @override
  bool get initialized;
  @override
  bool get isSubmitting;
  @override
  bool get hasError;
  @override
  UserModel? get authenticatedUser;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
