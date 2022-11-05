import 'package:get/get.dart';
import 'package:mtm/app/data/auth_provider.dart';
import 'package:mtm/app/data/models/login_request.dart';
import 'package:mtm/app/utils/http.dart';

class AuthRepo{
  late final AuthProvider provider;
  AuthRepo(){
    provider = AuthProvider();
  }
  Future<bool> login(LoginRequest data) async{
    provider.loginApi(data).then((body) {
      return true;
    }).catchError((err){
      print(err);
      return false;
    });

    return true;
  }
  Future<bool> register(LoginRequest data) async{
    provider.loginApi(data).then((body) {
      return true;
    }).catchError((err){
      print(err);
      return false;
    });

    return true;
  }
}
