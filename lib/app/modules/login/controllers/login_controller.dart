import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mtm/app/data/auth_provider.dart';
import 'package:mtm/app/data/auth_repo.dart';
import 'package:mtm/app/data/models/login_request.dart';

class LoginController extends GetxController {
  final TextEditingController phoneController =  TextEditingController();
  final TextEditingController passwordController =  TextEditingController();
    final AuthRepo repo =  AuthRepo();

  void submit() async{
    LoginRequest req = LoginRequest(username: phoneController.text, password: passwordController.text);
    bool loggedIn = await repo.login(req);
    print(loggedIn);
  }
  void navigateHome(){
    Get.toNamed('/home');
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // formKey.dispo
  }
}
