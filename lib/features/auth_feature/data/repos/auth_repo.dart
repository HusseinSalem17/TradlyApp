import 'package:dartz/dartz.dart';
import 'package:tradly_app/core/errors/failures.dart';

import '../models/auth/auth.dart';
import '../models/response/response_login/response_login.dart';
import '../models/response/response_register/response_register.dart';

abstract class AuthRepo {
  Future<Either<Failure, ResponseRegister>> registerUsingEmailAndPassword({
    required Auth data,
  });

  Future<Either<Failure, ResponseLogin>> loginUsingEmailAndPassword({
    required Auth data,
  });

  Future<Either<Failure, ResponseLogin>> verifyOTP({
    required Auth data,
  });
}
