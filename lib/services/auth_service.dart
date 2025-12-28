import 'package:assessment_recap_flutter/models/auth_model.dart';
import 'package:dio/dio.dart';
class AuthService {
  static Dio dio = Dio();
  static String baseUrl = 'https://librarysystemflutterteam.runasp.net/api/Registration';
  static Future<AuthModel> login({
    required String email,
    required String password
  })async{
    Response response = await dio.post('$baseUrl/SignIn', data: {
      'email':email,
      'password': password
    });

    return AuthModel.fromJson(response.data);
  }

}