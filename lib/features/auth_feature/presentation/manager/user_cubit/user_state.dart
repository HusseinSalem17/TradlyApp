part of 'user_cubit.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class AddUserInitial extends UserState {}

class UserLoading extends UserState {}

class AddUserWithAuthSuccess extends UserState {
  final ResponseLogin response;

  const AddUserWithAuthSuccess({required this.response});
}

class AddUserForLoginSuccess extends UserState {
  final User response;

  const AddUserForLoginSuccess({required this.response});
}

class UserFailure extends UserState {
  final String errMessage;

  const UserFailure(this.errMessage);
}

class Logout extends UserState {}
