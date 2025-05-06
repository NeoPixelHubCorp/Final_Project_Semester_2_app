// // // import 'dart:convert';

// // // import 'package:dartz/dartz.dart';
// // // import 'package:final_project_pengaduan_masyarakat_sem2/constants/variables.dart';
// // // import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
// // // import 'package:final_project_pengaduan_masyarakat_sem2/request/login_request_model.dart';
// // // import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
// // // import 'package:http/http.dart' as http;

// // // class AuthRemoteDatasource {
// // //   Future<Either<String, AuthResponseModel>> login(
// // //     LoginRequestModel data,
// // //   ) async {
// // //     final response = await http.post(
// // //       Uri.parse('${Variables.baseUrl}/api/login'),
// // //       headers: <String, String>{
// // //         'Content-Type': 'application/json; charset=UTF-8',
// // //         'Accept': 'application/json',
// // //       },
// // //       body: data.toJson(),
// // //     );
// // //     if (response.statusCode == 200) {
// // //       return Right(AuthResponseModel.fromJson(response.body));
// // //     } else {
// // //       return Left(response.body);
// // //     }
// // //   }

// // //   Future<Either<String, String>> logout() async {
// // //     final authData = await AuthLocalDatasource().getAuthData();
// // //     final response = await http.post(
// // //       Uri.parse('${Variables.baseUrl}/api/logout'),
// // //       headers: <String, String>{
// // //         'Content-Type': 'application/json; charset=UTF-8',
// // //         'Accept': 'application/json',
// // //         'Authorization': 'Bearer ${authData.token}'
// // //       }
// // //     );

// // //     if(response.statusCode == 200) {  
// // //       return Right('logout success');
// // //     } else {  
// // //       return Left(response.body);
// // //     }
// // //   }

// // //   Future<Either<String, String>> register({
// // //   required String name,
// // //   required String email,
// // //   required String password,
// // //   required String confirmPassword,
// // // }) async {
// // //   final response = await http.post(
// // //     Uri.parse('${Variables.baseUrl}/api/register'), // pastikan endpoint ini benar
// // //     headers: <String, String>{
// // //       'Content-Type': 'application/json; charset=UTF-8',
// // //       'Accept': 'application/json',
// // //     },
// // //     body: jsonEncode({
// // //       'name': name,
// // //       'email': email,
// // //       'password': password,
// // //       'password_confirmation': confirmPassword
// // //     }),
// // //   );

// // //   if (response.statusCode == 200) {
// // //     return Right('Register success');
// // //   } else {
// // //     return Left(response.body); 
// // //   }
// // // }

// // // }
// // import 'dart:convert';

// // import 'package:dartz/dartz.dart';
// // import 'package:final_project_pengaduan_masyarakat_sem2/constants/variables.dart';
// // import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
// // import 'package:final_project_pengaduan_masyarakat_sem2/request/login_request_model.dart';
// // import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
// // import 'package:http/http.dart' as http;

// // class AuthRemoteDatasource {
// //   Future<Either<String, AuthResponseModel>> login(
// //     LoginRequestModel data,
// //   ) async {
// //     final response = await http.post(
// //       Uri.parse('${Variables.baseUrl}/api/login'),
// //       headers: <String, String>{
// //         'Content-Type': 'application/json; charset=UTF-8',
// //         'Accept': 'application/json',
// //       },
// //       body: data.toJson(),
// //     );
// //     if (response.statusCode == 200) {
// //       return Right(AuthResponseModel.fromJson(response.body));
// //     } else {
// //       return Left(response.body);
// //     }
// //   }

// //   Future<Either<String, String>> logout() async {
// //     final authData = await AuthLocalDatasource().getAuthData();
// //     final response = await http.post(
// //       Uri.parse('${Variables.baseUrl}/api/logout'),
// //       headers: <String, String>{
// //         'Content-Type': 'application/json; charset=UTF-8',
// //         'Accept': 'application/json',
// //         'Authorization': 'Bearer ${authData.token}'
// //       }
// //     );

// //     if(response.statusCode == 200) {  
// //       return Right('logout success');
// //     } else {  
// //       return Left(response.body);
// //     }
// //   }

// //   Future<Either<String, String>> register({
// //     required String name,
// //     required String email,
// //     required String password,
// //     required String confirmPassword,
// //   }) async {
// //     final response = await http.post(
// //       Uri.parse('${Variables.baseUrl}/api/register'),
// //       headers: <String, String>{
// //         'Content-Type': 'application/json; charset=UTF-8',
// //         'Accept': 'application/json',
// //       },
// //       body: jsonEncode({
// //         'name': name,
// //         'email': email,
// //         'password': password,
// //         'password_confirmation': confirmPassword,
// //       }),
// //     );

// //     if (response.statusCode == 200) {
// //       return Right('Register success');
// //     } else {
// //       return Left(response.body);
// //     }
// //   }
// // }
// import 'dart:convert';
// import 'package:dartz/dartz.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/constants/variables.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/request/login_request_model.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
// import 'package:http/http.dart' as http;

// class AuthRemoteDatasource {
//   Future<Either<String, AuthResponseModel>> login(
//     LoginRequestModel data,
//   ) async {
//     final response = await http.post(
//       Uri.parse('${Variables.baseUrl}/api/login'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Accept': 'application/json',
//       },
//       body: data.toJson(),
//     );

//     if (response.statusCode == 200) {
//       return Right(AuthResponseModel.fromJson(response.body));
//     } else {
//       final error = jsonDecode(response.body);
//       final message = error['message'] ?? error['error'] ?? 'Login failed';
//       return Left(message.toString());
//     }
//   }

//   Future<Either<String, String>> logout() async {
//     final authData = await AuthLocalDatasource().getAuthData();
//     final response = await http.post(
//       Uri.parse('${Variables.baseUrl}/api/logout'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer ${authData.token}'
//       },
//     );

//     if (response.statusCode == 200) {
//       return Right('Logout success');
//     } else {
//       final error = jsonDecode(response.body);
//       final message = error['message'] ?? error['error'] ?? 'Logout failed';
//       return Left(message.toString());
//     }
//   }

//   Future<Either<String, String>> register({
//     required String name,
//     required String email,
//     required String password,
//     required String confirmPassword,
//   }) async {
//     final response = await http.post(
//       Uri.parse('${Variables.baseUrl}/api/register'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Accept': 'application/json',
//       },
//       body: jsonEncode({
//         'name': name,
//         'email': email,
//         'password': password,
//         'password_confirmation': confirmPassword,
//       }),
//     );

//     if (response.statusCode == 200) {
//       return Right('Register success');
//     } else {
//       final error = jsonDecode(response.body);
//       final message = error['message'] ?? error['error'] ?? 'Register failed';
//       return Left(message.toString());
//     }
//   }
// }
// import 'dart:convert';
// import 'package:dartz/dartz.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/constants/variables.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/request/login_request_model.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
// import 'package:http/http.dart' as http;

// class AuthRemoteDatasource {
//   Future<Either<String, AuthResponseModel>> login(
//     LoginRequestModel data,
//   ) async {
//     final response = await http.post(
//       Uri.parse('${Variables.baseUrl}/api/login'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Accept': 'application/json',
//       },
//       body: data.toJson(),
//     );

//     if (response.statusCode >= 200 && response.statusCode < 300) {
//       return Right(AuthResponseModel.fromJson(response.body));
//     } else {
//       final error = jsonDecode(response.body);
//       final message = error['message'] ?? error['error'] ?? 'Login failed';
//       return Left(message.toString());
//     }
//   }

//   Future<Either<String, String>> logout() async {
//     final authData = await AuthLocalDatasource().getAuthData();
//     final response = await http.post(
//       Uri.parse('${Variables.baseUrl}/api/logout'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer ${authData.token}'
//       },
//     );

//     if (response.statusCode >= 200 && response.statusCode < 300) {
//       return Right('Logout success');
//     } else {
//       final error = jsonDecode(response.body);
//       final message = error['message'] ?? error['error'] ?? 'Logout failed';
//       return Left(message.toString());
//     }
//   }

//   Future<Either<String, String>> register({
//     required String name,
//     required String email,
//     required String password,
//     required String confirmPassword,
//   }) async {
//     final response = await http.post(
//       Uri.parse('${Variables.baseUrl}/api/register'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Accept': 'application/json',
//       },
//       body: jsonEncode({
//         'name': name,
//         'email': email,
//         'password': password,
//         'password_confirmation': confirmPassword,
//       }),
//     );

//     if (response.statusCode >= 200 && response.statusCode < 300) {
//       final data = jsonDecode(response.body);
//       return Right(data['message'] ?? 'Register success');
//     } else {
//       final error = jsonDecode(response.body);
//       final message = error['message'] ?? error['error'] ?? 'Register failed';
//       return Left(message.toString());
//     }
//   }
// }
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/variables.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/request/login_request_model.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
    LoginRequestModel data,
  ) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: data.toJson(),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      final error = jsonDecode(response.body);
      final message = error['message'] ?? error['error'] ?? 'Login failed';
      return Left(message.toString());
    }
  }

  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/logout'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}'
      },
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return Right('Logout success');
    } else {
      final error = jsonDecode(response.body);
      final message = error['message'] ?? error['error'] ?? 'Logout failed';
      return Left(message.toString());
    }
  }

  Future<Either<String, String>> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
      }),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final data = jsonDecode(response.body);
      return Right(data['message'] ?? 'Register success');
    } else {
      final error = jsonDecode(response.body);
      final message = error['message'] ?? error['error'] ?? 'Register failed';
      return Left(message.toString());
    }
  }
}
