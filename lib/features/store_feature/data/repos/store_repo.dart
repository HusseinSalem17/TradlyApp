import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

import '../models/create_store_model/create_store_models.dart';
import '../models/response/response_create_store_account/response_create_store_account.dart';

abstract class StoreRepo {
  Future<Either<Failure, ResponseCreateStoreAccount>> createStore({
    required CreateStoreModel data,
    required String authKey,
  });
}
