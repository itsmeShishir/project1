import 'package:dio/dio.dart';

import '../../app/constants.dart';
import '../../helper/http_service.dart';
import '../../model/user.dart';

class UserRemoteDataSource {
  final Dio _httpServices = HttpServices().getDioInstance();

  Future<int> registerUser(User user) async {
    try {
      var data = {
        'fullName': user.fullname,
        'username': user.username,
        'email': user.email,
        'password': user.password,
      };
      final response = await _httpServices.post(
        Constant.userRegisterURL,
        data: data,
      );
      if (response.statusCode == 201) {
        return 1;
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }

  Future<bool> loginUser(String username, String password) async {
    try {
      Response response = await _httpServices.post(
        Constant.userLoginURL,
        data: {
          'username': username,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        Constant.token = "Bearer ${response.data['token']}";
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
