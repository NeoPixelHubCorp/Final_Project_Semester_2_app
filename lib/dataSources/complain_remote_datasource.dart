import 'package:dartz/dartz.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/variables.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/request/create_complain_request_model.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/complain_response_model.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/create_complaint_response_model.dart';
import 'package:http/http.dart' as http;

class ComplainRemoteDatasource {
  // ini buat ngambil data produk dari localhost
  Future<Either<String, ComplainResponseModel>> getcomplains() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/complains'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${authData.token}'
        });

    if (response.statusCode == 200) {
      return Right(ComplainResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

// ini buat nambah data tiket atau produk
  Future<Either<String, CreateComplainResponseModel>> createLaporan(
      CreateComplainRequestModel model) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response =
        await http.post(Uri.parse('${Variables.baseUrl}/api/complains'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              'Accept': 'application/json',
              'Authorization': 'Bearer ${authData.token}'
            },
            body: model.toJson());

    if (response.statusCode == 200) {
      return Right(CreateComplainResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  // ini buat update data tiket/produk
  Future<Either<String, CreateComplainResponseModel>> updateLaporan(
      CreateComplainRequestModel requestModel, int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
      'Content-Type': 'application/json; charset=UTF-8'
    };

    final response = await http.patch(
        Uri.parse('${Variables.baseUrl}/api/complains/$id'),
        headers: headers,
        body: requestModel.toJson());

    if (response.statusCode == 200) {
      return Right(CreateComplainResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  // ini buat delete data tiket/produk
  Future<Either<String, String>> deleteTicket(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };

    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/complains/$id'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right('Success');
    } else {
      return Left(response.body);
    }
  }
}
