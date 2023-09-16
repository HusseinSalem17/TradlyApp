part of 'add_user_cubit.dart';

sealed class AddUserState extends Equatable {
  const AddUserState();

  @override
  List<Object> get props => [];
}

class AddUserInitial extends AddUserState {}

class AddUserLoading extends AddUserState {}

class AddUserSuccess extends AddUserState {
  final ResponseLogin response;

  const AddUserSuccess({required this.response});
}

class AddUserFailure extends AddUserState {
  final String errMessage;

  const AddUserFailure(this.errMessage);
}
