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
    required TResult Function() started,
    required TResult Function(UserModel user) addUser,
    required TResult Function() loadUsers,
    required TResult Function(UserModel user) register,
    required TResult Function(UserModel user) login,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? addUser,
    TResult? Function()? loadUsers,
    TResult? Function(UserModel user)? register,
    TResult? Function(UserModel user)? login,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? addUser,
    TResult Function()? loadUsers,
    TResult Function(UserModel user)? register,
    TResult Function(UserModel user)? login,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddUser value) addUser,
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddUser value)? addUser,
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_LogOut value)? logOut,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
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
    required TResult Function(UserModel user) addUser,
    required TResult Function() loadUsers,
    required TResult Function(UserModel user) register,
    required TResult Function(UserModel user) login,
    required TResult Function() logOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? addUser,
    TResult? Function()? loadUsers,
    TResult? Function(UserModel user)? register,
    TResult? Function(UserModel user)? login,
    TResult? Function()? logOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? addUser,
    TResult Function()? loadUsers,
    TResult Function(UserModel user)? register,
    TResult Function(UserModel user)? login,
    TResult Function()? logOut,
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
    required TResult Function(AddUser value) addUser,
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_LogOut value) logOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddUser value)? addUser,
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddUserImplCopyWith<$Res> {
  factory _$$AddUserImplCopyWith(
          _$AddUserImpl value, $Res Function(_$AddUserImpl) then) =
      __$$AddUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$AddUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AddUserImpl>
    implements _$$AddUserImplCopyWith<$Res> {
  __$$AddUserImplCopyWithImpl(
      _$AddUserImpl _value, $Res Function(_$AddUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AddUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AddUserImpl implements AddUser {
  const _$AddUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvent.addUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      __$$AddUserImplCopyWithImpl<_$AddUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) addUser,
    required TResult Function() loadUsers,
    required TResult Function(UserModel user) register,
    required TResult Function(UserModel user) login,
    required TResult Function() logOut,
  }) {
    return addUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? addUser,
    TResult? Function()? loadUsers,
    TResult? Function(UserModel user)? register,
    TResult? Function(UserModel user)? login,
    TResult? Function()? logOut,
  }) {
    return addUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? addUser,
    TResult Function()? loadUsers,
    TResult Function(UserModel user)? register,
    TResult Function(UserModel user)? login,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddUser value) addUser,
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_LogOut value) logOut,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddUser value)? addUser,
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class AddUser implements AuthEvent {
  const factory AddUser(final UserModel user) = _$AddUserImpl;

  UserModel get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUsersImplCopyWith<$Res> {
  factory _$$LoadUsersImplCopyWith(
          _$LoadUsersImpl value, $Res Function(_$LoadUsersImpl) then) =
      __$$LoadUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUsersImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoadUsersImpl>
    implements _$$LoadUsersImplCopyWith<$Res> {
  __$$LoadUsersImplCopyWithImpl(
      _$LoadUsersImpl _value, $Res Function(_$LoadUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadUsersImpl implements LoadUsers {
  const _$LoadUsersImpl();

  @override
  String toString() {
    return 'AuthEvent.loadUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) addUser,
    required TResult Function() loadUsers,
    required TResult Function(UserModel user) register,
    required TResult Function(UserModel user) login,
    required TResult Function() logOut,
  }) {
    return loadUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? addUser,
    TResult? Function()? loadUsers,
    TResult? Function(UserModel user)? register,
    TResult? Function(UserModel user)? login,
    TResult? Function()? logOut,
  }) {
    return loadUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? addUser,
    TResult Function()? loadUsers,
    TResult Function(UserModel user)? register,
    TResult Function(UserModel user)? login,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddUser value) addUser,
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_LogOut value) logOut,
  }) {
    return loadUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return loadUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddUser value)? addUser,
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(this);
    }
    return orElse();
  }
}

abstract class LoadUsers implements AuthEvent {
  const factory LoadUsers() = _$LoadUsersImpl;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RegisterImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvent.register(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) addUser,
    required TResult Function() loadUsers,
    required TResult Function(UserModel user) register,
    required TResult Function(UserModel user) login,
    required TResult Function() logOut,
  }) {
    return register(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? addUser,
    TResult? Function()? loadUsers,
    TResult? Function(UserModel user)? register,
    TResult? Function(UserModel user)? login,
    TResult? Function()? logOut,
  }) {
    return register?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? addUser,
    TResult Function()? loadUsers,
    TResult Function(UserModel user)? register,
    TResult Function(UserModel user)? login,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddUser value) addUser,
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_LogOut value) logOut,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddUser value)? addUser,
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(final UserModel user) = _$RegisterImpl;

  UserModel get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
  const _$LoginImpl(this.user);

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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) addUser,
    required TResult Function() loadUsers,
    required TResult Function(UserModel user) register,
    required TResult Function(UserModel user) login,
    required TResult Function() logOut,
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? addUser,
    TResult? Function()? loadUsers,
    TResult? Function(UserModel user)? register,
    TResult? Function(UserModel user)? login,
    TResult? Function()? logOut,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? addUser,
    TResult Function()? loadUsers,
    TResult Function(UserModel user)? register,
    TResult Function(UserModel user)? login,
    TResult Function()? logOut,
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
    required TResult Function(_Started value) started,
    required TResult Function(AddUser value) addUser,
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_LogOut value) logOut,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddUser value)? addUser,
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final UserModel user) = _$LoginImpl;

  UserModel get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user) addUser,
    required TResult Function() loadUsers,
    required TResult Function(UserModel user) register,
    required TResult Function(UserModel user) login,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserModel user)? addUser,
    TResult? Function()? loadUsers,
    TResult? Function(UserModel user)? register,
    TResult? Function(UserModel user)? login,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user)? addUser,
    TResult Function()? loadUsers,
    TResult Function(UserModel user)? register,
    TResult Function(UserModel user)? login,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddUser value) addUser,
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddUser value)? addUser,
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAdded,
    required TResult Function(List<UserModel> users) usersLoaded,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAdded,
    TResult? Function(List<UserModel> users)? usersLoaded,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAdded,
    TResult Function(List<UserModel> users)? usersLoaded,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserAdded value) userAdded,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Error value) error,
    required TResult Function(idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserAdded value)? userAdded,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Error value)? error,
    TResult? Function(idle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserAdded value)? userAdded,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Error value)? error,
    TResult Function(idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAdded,
    required TResult Function(List<UserModel> users) usersLoaded,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
    required TResult Function() idle,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAdded,
    TResult? Function(List<UserModel> users)? usersLoaded,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? idle,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAdded,
    TResult Function(List<UserModel> users)? usersLoaded,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserAdded value) userAdded,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Error value) error,
    required TResult Function(idle value) idle,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserAdded value)? userAdded,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Error value)? error,
    TResult? Function(idle value)? idle,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserAdded value)? userAdded,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Error value)? error,
    TResult Function(idle value)? idle,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserAddedImplCopyWith<$Res> {
  factory _$$UserAddedImplCopyWith(
          _$UserAddedImpl value, $Res Function(_$UserAddedImpl) then) =
      __$$UserAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAddedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserAddedImpl>
    implements _$$UserAddedImplCopyWith<$Res> {
  __$$UserAddedImplCopyWithImpl(
      _$UserAddedImpl _value, $Res Function(_$UserAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAddedImpl implements UserAdded {
  const _$UserAddedImpl();

  @override
  String toString() {
    return 'AuthState.userAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAdded,
    required TResult Function(List<UserModel> users) usersLoaded,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
    required TResult Function() idle,
  }) {
    return userAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAdded,
    TResult? Function(List<UserModel> users)? usersLoaded,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? idle,
  }) {
    return userAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAdded,
    TResult Function(List<UserModel> users)? usersLoaded,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (userAdded != null) {
      return userAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserAdded value) userAdded,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Error value) error,
    required TResult Function(idle value) idle,
  }) {
    return userAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserAdded value)? userAdded,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Error value)? error,
    TResult? Function(idle value)? idle,
  }) {
    return userAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserAdded value)? userAdded,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Error value)? error,
    TResult Function(idle value)? idle,
    required TResult orElse(),
  }) {
    if (userAdded != null) {
      return userAdded(this);
    }
    return orElse();
  }
}

abstract class UserAdded implements AuthState {
  const factory UserAdded() = _$UserAddedImpl;
}

/// @nodoc
abstract class _$$UsersLoadedImplCopyWith<$Res> {
  factory _$$UsersLoadedImplCopyWith(
          _$UsersLoadedImpl value, $Res Function(_$UsersLoadedImpl) then) =
      __$$UsersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> users});
}

/// @nodoc
class __$$UsersLoadedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UsersLoadedImpl>
    implements _$$UsersLoadedImplCopyWith<$Res> {
  __$$UsersLoadedImplCopyWithImpl(
      _$UsersLoadedImpl _value, $Res Function(_$UsersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UsersLoadedImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$UsersLoadedImpl implements UsersLoaded {
  const _$UsersLoadedImpl(final List<UserModel> users) : _users = users;

  final List<UserModel> _users;
  @override
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'AuthState.usersLoaded(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersLoadedImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersLoadedImplCopyWith<_$UsersLoadedImpl> get copyWith =>
      __$$UsersLoadedImplCopyWithImpl<_$UsersLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAdded,
    required TResult Function(List<UserModel> users) usersLoaded,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
    required TResult Function() idle,
  }) {
    return usersLoaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAdded,
    TResult? Function(List<UserModel> users)? usersLoaded,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? idle,
  }) {
    return usersLoaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAdded,
    TResult Function(List<UserModel> users)? usersLoaded,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserAdded value) userAdded,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Error value) error,
    required TResult Function(idle value) idle,
  }) {
    return usersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserAdded value)? userAdded,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Error value)? error,
    TResult? Function(idle value)? idle,
  }) {
    return usersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserAdded value)? userAdded,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Error value)? error,
    TResult Function(idle value)? idle,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(this);
    }
    return orElse();
  }
}

abstract class UsersLoaded implements AuthState {
  const factory UsersLoaded(final List<UserModel> users) = _$UsersLoadedImpl;

  List<UserModel> get users;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersLoadedImplCopyWith<_$UsersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAdded,
    required TResult Function(List<UserModel> users) usersLoaded,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
    required TResult Function() idle,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAdded,
    TResult? Function(List<UserModel> users)? usersLoaded,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? idle,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAdded,
    TResult Function(List<UserModel> users)? usersLoaded,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserAdded value) userAdded,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Error value) error,
    required TResult Function(idle value) idle,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserAdded value)? userAdded,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Error value)? error,
    TResult? Function(idle value)? idle,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserAdded value)? userAdded,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Error value)? error,
    TResult Function(idle value)? idle,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$AuthenticatedImpl;
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
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
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

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAdded,
    required TResult Function(List<UserModel> users) usersLoaded,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
    required TResult Function() idle,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAdded,
    TResult? Function(List<UserModel> users)? usersLoaded,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? idle,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAdded,
    TResult Function(List<UserModel> users)? usersLoaded,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    TResult Function()? idle,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(UserAdded value) userAdded,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Error value) error,
    required TResult Function(idle value) idle,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserAdded value)? userAdded,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Error value)? error,
    TResult? Function(idle value)? idle,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserAdded value)? userAdded,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Error value)? error,
    TResult Function(idle value)? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AuthState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$idleImplCopyWith<$Res> {
  factory _$$idleImplCopyWith(
          _$idleImpl value, $Res Function(_$idleImpl) then) =
      __$$idleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$idleImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$idleImpl>
    implements _$$idleImplCopyWith<$Res> {
  __$$idleImplCopyWithImpl(_$idleImpl _value, $Res Function(_$idleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$idleImpl implements idle {
  const _$idleImpl();

  @override
  String toString() {
    return 'AuthState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$idleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAdded,
    required TResult Function(List<UserModel> users) usersLoaded,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAdded,
    TResult? Function(List<UserModel> users)? usersLoaded,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAdded,
    TResult Function(List<UserModel> users)? usersLoaded,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserAdded value) userAdded,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Error value) error,
    required TResult Function(idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserAdded value)? userAdded,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Error value)? error,
    TResult? Function(idle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserAdded value)? userAdded,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Error value)? error,
    TResult Function(idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class idle implements AuthState {
  const factory idle() = _$idleImpl;
}
