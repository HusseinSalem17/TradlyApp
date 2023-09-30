import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/user.dart';
import 'package:tradly_app/features/auth_feature/data/models/response/response_login/response_login.dart';

import '../../../data/repos/auth_repo.dart';

part 'user_state.dart';

class UserHiveCubit extends Cubit<UserState> {
  UserHiveCubit(this.authRepo) : super(AddUserInitial());
  final AuthRepo authRepo;
  String? uuid;

  addUserWithAuth({required ResponseLogin user}) async {
    try {
      var usersBox = Hive.box<ResponseLogin>(kResponseLoginBoxForAuth);
      usersBox.put(kOfBoxAuth, user);
    } catch (e) {
      debugPrint('addUserWithAuth: ${e.toString()}');
    }
  }

  //this function to add boolean number to check if user is logged or not
  addUser({required User user}) async {
    try {
      var usersBox = Hive.box<User>(kLoginBox);
      await usersBox.put(kOfBoxLogin, user);
    } catch (e) {
      debugPrint('addUser: ${e.toString()}');
    }
  }

  ResponseLogin? getUserWithAuth() {
    try {
      if (checkLogged()) {
        var usersBox = Hive.box<ResponseLogin>(kResponseLoginBoxForAuth);
        ResponseLogin? users = usersBox.get(kOfBoxAuth);
        return users!;
      } else {
        debugPrint('errorMessage: user not logged');
      }
    } catch (e) {
      debugPrint('getUserWithAuth: ${e.toString()}');
    }
    return null;
  }

  checkLogged() {
    var usersBox = Hive.box<ResponseLogin>(kResponseLoginBoxForAuth);
    bool isLogged = usersBox.containsKey(kOfBoxAuth);
    return isLogged;
  }
}
