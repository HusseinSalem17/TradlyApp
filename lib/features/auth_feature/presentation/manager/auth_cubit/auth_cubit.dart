import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../../constants.dart';
import '../../../data/models/auth/auth.dart';
import '../../../data/models/request_verify/request_verify.dart';
import '../../../data/models/response/response_login/response_login.dart';
import '../../../data/repos/auth_repo.dart';
import '../user_hive_cubit/user_cubit.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(LoginCubitInitial());

  final AuthRepo authRepo;

  Future<void> register({required Auth data}) async {
    emit(AuthLoading());
    var result = await authRepo.registerUsingEmailAndPassword(data: data);
    result.fold(
      (failure) {
        emit(AuthFailure(failure.errMessage));
      },
      (response) {
        emit(AuthSuccess(response));
      },
    );
  }

  Future<void> login({required Auth data}) async {
    emit(AuthLoading());
    var result = await authRepo.loginUsingEmailAndPassword(data: data);
    result.fold(
      (failure) {
        emit(AuthFailure(failure.errMessage));
      },
      (response) {
        emit(AuthSuccess(response));
      },
    );
  }

  Future<void> verify({required RequestVerify data}) async {
    emit(AuthLoading());
    var result = await authRepo.verifyOTP(data: data);
    result.fold(
      (failure) {
        emit(AuthFailure(failure.errMessage));
      },
      (response) {
        emit(AuthSuccess(response));
      },
    );
  }

  Future<void> logout(BuildContext context) async {
    emit(AuthLoading());
    var usersBox = Hive.box<ResponseLogin>(kResponseLoginBoxForAuth);
    ResponseLogin user =
        BlocProvider.of<UserHiveCubit>(context).getUserWithAuth()!;
    var result = await authRepo.logout(
      authKey: user.data!.user!.key!.authKey!,
      uuid: user.data!.user!.id!,
    );
    await usersBox.delete(kOfBoxAuth);
    result.fold(
      (failure) {
        emit(AuthFailure(failure.errMessage));
      },
      (response) {
        emit(AuthSuccess(response));
      },
    );
  }
}
