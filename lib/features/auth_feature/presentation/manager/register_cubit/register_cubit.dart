import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/auth.dart';
import 'package:tradly_app/features/auth_feature/data/models/response/response_register/response_register.dart';
import 'package:tradly_app/features/auth_feature/data/repos/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());

  final AuthRepo authRepo;
  Future<void> register({required Auth data}) async {
    emit(RegisterLoading());
    var result = await authRepo.registerUsingEmailAndPassword(data: data);
    result.fold(
      (failure) {
        emit(RegisterFailure(failure.errMessage));
      },
      (response) {
        emit(RegisterSuccess(response));
      },
    );
  }
}
