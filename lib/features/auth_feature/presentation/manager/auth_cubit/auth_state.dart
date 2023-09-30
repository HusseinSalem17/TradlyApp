part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class LoginCubitInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthFailure extends AuthState {
  final String errMessage;

  const AuthFailure(this.errMessage);
}

final class AuthSuccess extends AuthState {
  final dynamic response;

  const AuthSuccess(this.response);
}
