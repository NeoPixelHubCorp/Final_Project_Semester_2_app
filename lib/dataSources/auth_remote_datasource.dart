import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/variables.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/home_page.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/request/login_request_model.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/request/register_request_model.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
import 'package:flutter/widgets.dart';
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
    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, AuthResponseModel>> register(
    RegisterRequestModel data,
  ) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: data.toJson(),
    );
    if (response.statusCode == 201) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
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
        });

    if (response.statusCode == 200) {
      return Right('logout success');
    } else {
      return Left(response.body);
    }
  }

  // newsAPI
 
}
