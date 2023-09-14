part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginCubitInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginFailure extends LoginState {
  final String errMessage;

  const LoginFailure(this.errMessage);
}

final class LoginSuccess extends LoginState {
  final ResponseLogin response;

  const LoginSuccess(this.response);
}
