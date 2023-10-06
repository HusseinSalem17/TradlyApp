import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:tradly_app/core/errors/failures.dart';
import '../../../../auth_feature/presentation/manager/user_hive_cubit/user_cubit.dart';
import '../../../data/models/create_store_model/account.dart';
import '../../../data/models/create_store_model/create_store_models.dart';
import '../../../data/models/create_store_model/location.dart';
import '../../../data/models/response/response_create_store_account/response_create_store_account.dart';
import '../../../data/repos/store_repo.dart';

part 'create_store_state.dart';

class CreateStoreCubit extends Cubit<CreateStoreState> {
  final StoreRepo storeRepo;
  final List<String> textFormFiledLabels = [
    'Store Name',
    'Store Web Address',
    'Store Description',
    'Store Type',
    'Address',
    'City',
    'Country',
    'Courier Name',
  ];

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
      print('THIS IS MY ID ----->>> ${response.data?.account?.id}');
      return emit(CreateStoreSuccess(response));
    });
  }

  void createAccount(
    BuildContext context,
    formKey,
    List<TextEditingController> textControllers,
  ) {
    if (formKey.currentState!.validate()) {
      UniqueKey uniqueKey = UniqueKey();
      int uniqueId = uniqueKey.hashCode;
      CreateStoreModel createStoreModel;
      createStoreModel = CreateStoreModel(
        account: Account(
          id: uniqueId,
          name: textControllers[0].text,
          uniqueName: textControllers[1].text,
          description: textControllers[2].text,
          type: textControllers[3].text,
          location: Location(
            formattedAddress: textControllers[4].text,
            city: textControllers[5].text,
            country: textControllers[6].text,
            postcode: textControllers[7].text,
          ),
          active: true,
        ),
      );
      String? authKey = BlocProvider.of<UserHiveCubit>(context)
          .getUserWithAuth()
          ?.data!
          .user
          ?.key
          ?.authKey;
      print(
        'your auth is ::: $authKey',
      );
      print('your id is : $uniqueId');
      createStore(
        data: createStoreModel,
        authKey: authKey!,
      );
    }
  }
}
