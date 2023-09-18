import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/user.dart';
import 'package:tradly_app/features/auth_feature/data/models/response/response_login/response_login.dart';

part 'add_user_state.dart';

class AddUserCubit extends Cubit<AddUserState> {
  AddUserCubit() : super(AddUserInitial());

  addUserWithAuth({required ResponseLogin user}) async {
    emit(AddUserLoading());
    try {
      var usersBox = Hive.box<ResponseLogin>(kResponseLoginBoxForAuth);
      await usersBox.put(kOfBoxAuth, user);
      emit(AddUserWithAuthSuccess(response: user));
      usersBox.close();
    } catch (e) {
      emit(AddUserFailure(e.toString()));
    }
  }

  //this function to add boolean number to check if user is logged or not
  addUserForLogin({required User user}) async {
    emit(AddUserLoading());
    try {
      var usersBox = Hive.box<User>(kLoginBox);
      await usersBox.put(kOfBoxLogin, user);
      emit(AddUserForLoginSuccess(response: user));
      usersBox.close();
    } catch (e) {
      emit(AddUserFailure(e.toString()));
    }
  }

  getUserWithAuth() {
    emit(AddUserLoading());
    try {
      var usersBox = Hive.box<ResponseLogin>(kResponseLoginBoxForAuth);
      var users = usersBox.values.toList();
      emit(AddUserWithAuthSuccess(response: users[0]));
      usersBox.close();
    } catch (e) {
      emit(AddUserFailure(e.toString()));
    }
  }

  checkLogged() {
    var usersBox = Hive.box<User>(kLoginBox);
    bool isLogged = usersBox.containsKey(kOfBoxLogin);
    return isLogged;
  }
}
