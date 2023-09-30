import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tradly_app/constants.dart';

import 'package:tradly_app/core/errors/failures.dart';
import 'package:tradly_app/core/utils/functions/api_service.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/auth.dart';
import 'package:tradly_app/features/auth_feature/data/models/request_verify/request_verify.dart';

import '../models/response/response_login/response_login.dart';
import '../models/response/response_register/response_register.dart';
import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl(this.apiService);
  @override
  Future<Either<Failure, ResponseRegister>> registerUsingEmailAndPassword(
      {required Auth data}) async {
    try {
      var response = ResponseRegister.fromJson(
        await apiService.post(
          endPoint: 'v1/users/register',
          data: data.toJson(),
          headers: {
            "Authorization": publishable_key,
            "Content-Type": "application/json",
          },
        ),
      );
      return right(response);
    } catch (e) {
      //if i had status code not 200 right (throw dio error)
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

  @override
  Future<Either<Failure, ResponseLogin>> loginUsingEmailAndPassword(
      {required Auth data}) async {
    try {
      var response = ResponseLogin.fromJson(
        await apiService.post(
          endPoint: 'v1/users/login',
          data: data.toJson(),
          headers: {
            "Authorization": publishable_key,
            "Content-Type": "application/json",
          },
        ),
      );
      return right(response);
    } catch (e) {
      //if i had status code not 200 right (throw dio error)
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

  @override
  Future<Either<Failure, ResponseLogin>> verifyOTP(
      {required RequestVerify data}) async {
    try {
      var response = ResponseLogin.fromJson(
        await apiService.post(
          endPoint: 'v1/users/verify',
          data: data.toJson(),
          headers: {
            "Authorization": publishable_key,
            "Content-Type": "application/json",
          },
        ),
      );
      return right(response);
    } catch (e) {
      //if i had status code not 200 right (throw dio error)
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

  @override
  Future<Either<Failure, Map<String, dynamic>>> logout(
      {required String uuid, required String authKey}) async {
    try {
      var response = await apiService.post(
        data: {"uuid": uuid},
        endPoint: 'v1/users/logout',
        headers: {
          "Authorization": publishable_key,
          "Content-Type": "application/json",
          "x-auth-key": authKey,
        },
      );
      return right(response);
    } catch (e) {
      //if i had status code not 200 right (throw dio error)
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
