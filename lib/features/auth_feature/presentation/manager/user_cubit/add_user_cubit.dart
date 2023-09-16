import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/features/auth_feature/data/models/response/response_login/response_login.dart';

part 'add_user_state.dart';

class AddUserCubit extends Cubit<AddUserState> {
  AddUserCubit() : super(AddUserInitial());

  addUser({required ResponseLogin user}) async {
    emit(AddUserLoading());
    try {
      var usersBox = Hive.box<ResponseLogin>(kResponseLoginBox);
      await usersBox.add(user);
      emit(AddUserSuccess(response: user));
    } catch (e) {
      emit(AddUserFailure(e.toString()));
    }
  }
}
