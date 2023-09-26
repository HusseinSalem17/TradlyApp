import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tradly_app/features/store_feature/data/models/create_store_model/create_store_model.dart';

import '../../../data/repos/store_repo.dart';

part 'create_store_state.dart';

class CreateStoreCubit extends Cubit<CreateStoreState> {
  final StoreRepo storeRepo;

  CreateStoreCubit(this.storeRepo) : super(CreateStoreInitial());

  Future<void> createStore({required CreateStoreModel data}) async {
    emit(CreateStoreLoading());
    var result = await storeRepo.createStore(data: data);
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
