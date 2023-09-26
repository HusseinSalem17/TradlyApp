part of 'create_store_cubit.dart';

@immutable
abstract class CreateStoreState {}

class CreateStoreInitial extends CreateStoreState {}

class CreateStoreSuccess extends CreateStoreState {
  final CreateStoreModel response;

  CreateStoreSuccess(this.response);
}

class CreateStoreFailure extends CreateStoreState {
  final String errorMessage;

  CreateStoreFailure(this.errorMessage);
}

class CreateStoreLoading extends CreateStoreState {}
