import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/app/components/btn.dart';
import 'package:mtm/app/components/logo.dart';
import 'package:mtm/app/components/main_container.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MainContainer(
      child: Form(
        // key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(),
            SizedBox(height: 30,),
            TextFormField(
              controller: controller.phoneController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'phone',
                  
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff807d85), width: 2.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              // controller: controller.phoneController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'address',
                  
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff807d85), width: 2.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              controller: controller.passwordController,
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff807d85), width: 2.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  ),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: ()=> Get.toNamed("/register"), child: Text("already_have_an_account".tr)),
            SizedBox(height: 10,),
            Btn(text: 'register'.tr, submit: controller.submit),
            SizedBox(height: 10,),
            // Btn(text: 'visitor'.tr, onSubmit: controller.navigateHome)
            
          ],
        ),
      ),
    ));
  }
}
