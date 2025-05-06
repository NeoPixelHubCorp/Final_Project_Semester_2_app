// import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// class AuthLocalDatasource {
//   // saveAuthData = buat nyimpen data autentikasi
//   // ketika pengguna berhasil login, dari server akan disimpan secara lokal agar tetap bisa digunakan meskipun aplikasi ditutup
//   // AuthLocalDataSource = untuk menyimpan data autentikasi/login secara local di sharedPreferences
//   Future<void> saveAuthData(AuthResponseModel data) async {
//     final pref = await SharedPreferences.getInstance();
//     await pref.setString('auth_data', data.toJson());
//   }

//   //remove= buat hapus data.
//   //jadi kalo udah keluar datanya bakal kehapus
//   // sharedPreferences = buat nyimpan data di local
//   Future<void> removeAuthData() async {
//     final pref = await SharedPreferences.getInstance();
//     await pref.remove('auth_data');
//   }

//   Future<AuthResponseModel> getAuthData() async {
//     final pref = await SharedPreferences.getInstance();
//     final data = pref.getString('auth_data');
//     if (data != null) {
//       return AuthResponseModel.fromJson(data);
//     } else {
//       throw Exception('Data not found');
//     }
//   }

//   Future<bool> isLogin() async {
//     final pref = await SharedPreferences.getInstance();
//     return pref.containsKey('auth_data');
//   }
// }
import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  static const String _authKey = 'auth_data';

  Future<void> saveAuthData(AuthResponseModel data) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(_authKey, data.toJson());
  }

  Future<void> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_authKey);
  }

  Future<bool> isLogin() async {
    final pref = await SharedPreferences.getInstance();
    return pref.containsKey(_authKey); // TRUE kalau ada data
  }

  Future<AuthResponseModel> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final data = pref.getString(_authKey);
    if (data != null) {
      return AuthResponseModel.fromJson(data);
    } else {
      throw Exception('Data not found');
    }
  }
}