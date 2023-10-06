import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:tradly_app/core/errors/failures.dart';

import '../../../data/models/create_store_model/create_store_models.dart';
import '../../../data/models/response/response_create_store_account/response_create_store_account.dart';
import '../../../data/repos/store_repo.dart';

part 'create_store_state.dart';

class CreateStoreCubit extends Cubit<CreateStoreState> {
  final StoreRepo storeRepo;

  CreateStoreCubit(this.storeRepo) : super(CreateStoreInitial());

  Future<void> createStore(
      {required dynamic data, required String authKey}) async {
    emit(CreateStoreLoading());
    Either<Failure, ResponseCreateStoreAccount> result =
        await storeRepo.createStore(data: data, authKey: authKey);
    result.fold((failure) {
      return emit(
        CreateStoreFailure(
          failure.errMessage,
        ),
      );
    }, (response) {
      return emit(CreateStoreSuccess(response));
    });
  }
}
