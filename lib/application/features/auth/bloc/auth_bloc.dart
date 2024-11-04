import 'package:bloc/bloc.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../../domain/model/user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      event.map(
        addUser: (value) {},
        loadUsers: (value) {},
        logOut: (e) async {
          await logOut();
        },
        started: (e) async {
          final userBox = await Hive.openBox('userBooxxx');
          final currentUser = userBox.get('currentUser');
          if (currentUser != null) {
            emit(const AuthState.authenticated());
          }
        },
        register: (e) async {
          UserModel user = e.user;
          await _signUp(user);
        },
        login: (event) async {
          bool isSignedin = await _singIn(event.user);
          if (isSignedin) {
            emit(const AuthState.authenticated());
          }
        },
      );
    });
  }
  Future<void> _signUp(UserModel user) async {
    Map<String, String> userTableSchema = {
      "id": "INTEGER PRIMARY KEY AUTOINCREMENT",
      "username": "TEXT NOT NULL",
      "mobile": "TEXT NOT NULL",
      "password": "TEXT NOT NULL",
      "date": "TEXT"
    };
    await sqfliteHelper.createTable("user", userTableSchema);
    await sqfliteHelper.insertExpense("user", user.toJson());
  }

  Future<bool> _singIn(UserModel user) async {
    var userList = await sqfliteHelper.getData("user");
    List<UserModel> users =
        userList.map((json) => UserModel.fromJson(json)).toList();

    for (var existingUser in users) {
      if (existingUser.username == user.username &&
          existingUser.password == user.password) {
        print("Login success");
        final userBox = Hive.box('userBooxxx');
        await userBox.put('currentUser', existingUser.toJson());
        print(await userBox.get("currentUser"));
        emit(const AuthState.authenticated());
        return true;
      }
    }

    print("Login failed");
    emit(const AuthState.error("Invalid username or password"));
    return false;
  }

  Future<void> logOut() async {
    final userBox = Hive.box('userBooxxx');
    userBox.clear();
  }
}
