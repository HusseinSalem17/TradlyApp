import 'package:dartz/dartz.dart';
import 'package:tradly_app/core/errors/failures.dart';

import '../models/auth/auth.dart';
import '../models/response/response.dart';

abstract class AuthRepo {
  Future<Either<Failure, ResponseRequest>> registerUsingEmailAndPassword({
    required Auth data,
  });
  // Future<Either<Failure, ResponseRequest>> registerUsingMobileAndPassword({
  //   required Auth data,
  // });
  // Future<Either<Failure, ResponseRequest>> registerUsingJustMobile({
  //   required Auth data,
  // });
}
