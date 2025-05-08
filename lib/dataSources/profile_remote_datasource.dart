import 'package:dartz/dartz.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/variables.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/request/profile_request_model.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/profile_response_model.dart';
import 'package:http/http.dart' as http;

class ProfileRemoteDatasource {
  // ini buat ngambil data produk dari localhost
  Future<Either<String, ProfileResponseModel>> getProfile() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/profile'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${authData.token}'
        });

    if (response.statusCode == 200) {
      return Right(ProfileResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  // ini buat update data tiket/produk
  Future<Either<String, ProfileResponseModel>> updateProfile(
      ProfileRequestModel requestModel, int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
      'Content-Type': 'application/json; charset=UTF-8'
    };

    final response = await http.patch(
      Uri.parse('${Variables.baseUrl}/api/profile/$id'),
      headers: headers,
      body: requestModel.toJson(), // pastikan toJson() mengembalikan String
    );

    if (response.statusCode == 200) {
      return Right(ProfileResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }
}
