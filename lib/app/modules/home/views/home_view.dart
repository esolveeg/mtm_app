import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:neon/neon.dart';

import '../controllers/home_controller.dart';
import 'package:mtm/app/components/icon_text.dart';

class HomeView extends GetView<HomeController> {
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Image(
            image: AssetImage("assets/images/logo.png"),
            width: 90,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: RadialGradient(
            center: Alignment(-0.3, -0.9), // near the top right
            radius: 0.8,
            colors: <Color>[
              Color(0xFF433e4c), // yellow sun
              Color(0xFF222222), // yellow sun
              Color(0xFF111111), // blue sky
            ],
            stops: <double>[0.2, 0.7, 1.0],
          )),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Container(
                child: Column(
              children: [
                // top widgets
                Row(
                 mainAxisAlignment :MainAxisAlignment.spaceBetween,
                  children: [
                  Column(children: [
                    iconTextWidget(context, "imagePath", "services".tr),
                    Divider(color: Colors.red,thickness: 1,),
                    iconTextWidget(context, "imagePath", "offers".tr),
                    Divider(color: Colors.red,thickness: 1,),
                    iconTextWidget(context, "imagePath", "ask".tr),
                  ]),
                  Text("asdasdasd")
                ]),
                SizedBox(height:30),
                // vertical services
                Row(children: [
                    iconTextWidgetVertical(context, "imagePath", "ask".tr),
                    SizedBox(width:15),
                    iconTextWidgetVertical(context, "imagePath", "ask".tr),
                    SizedBox(width:15),
                    iconTextWidgetVertical(context, "imagePath", "ask".tr),

                ],),
               
              ],
            )),
          ),
        ));
  }
}
