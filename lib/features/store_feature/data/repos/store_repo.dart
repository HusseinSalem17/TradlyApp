import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../auth_feature/data/models/response/response_register/response_register.dart';
import '../models/create_store_model/create_store_model.dart';

abstract class StoreRepo {
  Future<Either<Failure, CreateStoreModel>> createStore({
    required CreateStoreModel data,
  });
}
