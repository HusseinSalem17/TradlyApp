part of 'register_cubit.dart';

sealed class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterFailure extends RegisterState {
  final String errMessage;

  const RegisterFailure(this.errMessage);
}

final class RegisterSuccess extends RegisterState {
  final ResponseRegister response;

  const RegisterSuccess(this.response);
}
