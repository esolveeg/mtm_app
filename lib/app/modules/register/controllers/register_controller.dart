import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mtm/app/data/auth_repo.dart';
import 'package:mtm/app/data/models/login_request.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
 final TextEditingController phoneController =  TextEditingController();
  final TextEditingController passwordController =  TextEditingController();
    final AuthRepo repo =  AuthRepo();

  void submit() async{
    LoginRequest req = LoginRequest(username: phoneController.text, password: passwordController.text);
    bool loggedIn = await repo.login(req);
    Get.offAllNamed("/home");
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
    super.onClose();
  }

}
