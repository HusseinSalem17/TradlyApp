import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tradly_app/core/errors/failures.dart';

import 'package:tradly_app/features/store_feature/data/models/response/response_create_store_account/response_create_store_account.dart';
import 'package:tradly_app/features/store_feature/data/repos/store_repo.dart';

import '../../../../constants.dart';
import '../../../../core/utils/functions/api_service.dart';
import '../models/create_store_model/create_store_models.dart';

class StoreRepoImpl extends StoreRepo {
  final ApiService apiService;

  StoreRepoImpl(this.apiService);

  @override
  Future<Either<Failure, ResponseCreateStoreAccount>> createStore({
    required CreateStoreModel data,
    required String authKey,
  }) async {
    try {
      var response = ResponseCreateStoreAccount.fromJson(
        await apiService.post(
          endPoint: 'v1/accounts',
          data: data.toJson(),
          headers: {
            "Authorization": publishable_key,
            "Content-Type": "application/json",
            "X-Auth-Key": authKey
          },
        ),
      );
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
