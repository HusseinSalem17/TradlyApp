import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/request_verify/request_verify.dart';
import '../../../data/models/response/response_login/response_login.dart';
import '../../../data/repos/auth_repo.dart';

part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit(this.authRepo) : super(VerifyInitial());
  final AuthRepo authRepo;

  Future<void> verify({required RequestVerify data}) async {
    emit(VerifyLoading());
    var result = await authRepo.verifyOTP(data: data);
    result.fold(
      (failure) {
        emit(VerifyFailure(failure.errMessage));
      },
      (response) {
        emit(VerifySuccess(response));
      },
    );
  }
}
