import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/create_store_model/create_store_model.dart';

abstract class StoreRepo {
  Future<Either<Failure, CreateStoreModel>> createStore({
    required CreateStoreModel data,
  });
}
