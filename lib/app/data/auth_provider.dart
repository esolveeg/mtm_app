import 'package:get/get.dart';
import 'package:mtm/app/data/models/login_request.dart';
import 'package:mtm/app/data/models/register_request%20copy.dart';
import 'package:mtm/app/utils/http.dart';

class AuthProvider {
  final http = Http();
  Future<Response> loginApi(LoginRequest body) => http.post('login', {body});
  Future<Response> registerApi(RegisterRequest body) => http.post('register', {body});
}
