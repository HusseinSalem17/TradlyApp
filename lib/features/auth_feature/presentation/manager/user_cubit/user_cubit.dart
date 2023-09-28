import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/user.dart';
import 'package:tradly_app/features/auth_feature/data/models/response/response_login/response_login.dart';

import '../../views/login_screen.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(AddUserInitial());

  addUserWithAuth({required ResponseLogin user}) async {
    emit(UserLoading());
    try {
      var usersBox = Hive.box<ResponseLogin>(kResponseLoginBoxForAuth);
      await usersBox.put(kOfBoxAuth, user);
      emit(AddUserWithAuthSuccess(response: user));
      usersBox.close();
    } catch (e) {
      emit(UserFailure(e.toString()));
    }
  }

  //this function to add boolean number to check if user is logged or not
  login({required User user}) async {
    emit(UserLoading());
    try {
      var usersBox = Hive.box<User>(kLoginBox);
      await usersBox.put(kOfBoxLogin, user);
      emit(AddUserForLoginSuccess(response: user));
      usersBox.close();
    } catch (e) {
      emit(UserFailure(e.toString()));
    }
  }

  logout() async {
    emit(UserLoading());
    try {
      var usersBox = Hive.box<User>(kLoginBox);
      await usersBox.delete(kOfBoxLogin);
      emit(Logout());
      usersBox.close();
    } catch (e) {
      emit(UserFailure(e.toString()));
    }
  }

  getUserWithAuth() {
    emit(UserLoading());
    try {
      var usersBox = Hive.box<ResponseLogin>(kResponseLoginBoxForAuth);
      var users = usersBox.values.toList();
      emit(AddUserWithAuthSuccess(response: users[0]));
      usersBox.close();
    } catch (e) {
      emit(UserFailure(e.toString()));
    }
  }

  checkLogged() {
    var usersBox = Hive.box<User>(kLoginBox);
    bool isLogged = usersBox.containsKey(kOfBoxLogin);
    return isLogged;
  }
}
