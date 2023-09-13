import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tradly_app/constants.dart';

import 'package:tradly_app/core/errors/failures.dart';
import 'package:tradly_app/core/utils/functions/api_service.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/auth.dart';

import '../models/response/response.dart';
import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl(this.apiService);
  @override
  Future<Either<Failure, ResponseRequest>> registerUsingEmailAndPassword(
      {required Auth data}) async {
    try {
      var response = ResponseRequest.fromJson(await apiService.post(
        endPoint: 'v1/users/register',
        data: data.toJson(),
        headers: {
          "Authorization": publishable_key,
          "Content-Type": "application/json",
        },
      ));
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

// Future<void> login() async {
//   // print("nada ${emailController.text}");
//   // print("nada ${passwordController.text}");
//   if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
//     var response =
//         await http.post(Uri.parse("https://api.tradly.app/v1/users/login"),
//             body: (
//               {
//                 //"uuid": "cea6e059-adbf-4b19-a9c7-0037886050f1",
//                 "email": emailController.text,
//                 "password": passwordController.text,
//                 "type": "customer"
//               },
//             ),
//             headers: ({
//               "Authorization": "Bearer $publishable_key",
//               "Content-Type": "application/json",
//             }));

//     // print("nada ${response.statusCode}");
//     if (response.statusCode == 200) {
//       context;
//     } else {
//       // ignore: use_build_context_synchronously
//       ScaffoldMessenger.of(context)
//           .showSnackBar(const SnackBar(content: Text('Invalid credentails')));
//     }
//   } else {
//     ScaffoldMessenger.of(context)
//         .showSnackBar(const SnackBar(content: Text('Black Field NOT Allowed')));
//   }
// }
