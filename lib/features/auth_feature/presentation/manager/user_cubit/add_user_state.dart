part of 'add_user_cubit.dart';

sealed class AddUserState extends Equatable {
  const AddUserState();

  @override
  List<Object> get props => [];
}

class AddUserInitial extends AddUserState {}

class AddUserLoading extends AddUserState {}

class AddUserWithAuthSuccess extends AddUserState {
  final ResponseLogin response;

  const AddUserWithAuthSuccess({required this.response});
}

class AddUserForLoginSuccess extends AddUserState {
  final User response;

  const AddUserForLoginSuccess({required this.response});
}

class AddUserFailure extends AddUserState {
  final String errMessage;

  const AddUserFailure(this.errMessage);
}
