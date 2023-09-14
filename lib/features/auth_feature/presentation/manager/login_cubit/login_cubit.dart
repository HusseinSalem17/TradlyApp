import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tradly_app/features/auth_feature/data/models/response/response_login/response_login.dart';

import '../../../data/models/auth/auth.dart';
import '../../../data/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginCubitInitial());

  final AuthRepo authRepo;
  Future<void> login({required Auth data}) async {
    emit(LoginLoading());
    var result = await authRepo.loginUsingEmailAndPassword(data: data);
    result.fold(
      (failure) {
        emit(LoginFailure(failure.errMessage));
      },
      (response) {
        emit(LoginSuccess(response));
      },
    );
  }
}
