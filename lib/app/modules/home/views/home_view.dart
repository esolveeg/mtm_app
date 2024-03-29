import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/app/components/SlideIn.dart';
import 'package:mtm/app/components/hr.dart';
import 'package:mtm/app/components/logo.dart';
import 'package:mtm/app/components/main_container.dart';
import 'package:mtm/app/components/bottom_nav.dart';
import 'package:mtm/app/utils/gredient_contaienr.dart';
import '../controllers/home_controller.dart';
import 'package:mtm/app/components/icon_text.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomeView extends GetView<HomeController> {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:Logo(),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: MainContainer(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top:100),
                  child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          SlideIn(
                            ltr: true,
                            child: iconTextWidget(context,
                                "assets/images/services.png", "services".tr),
                          ),
                          Hr(width: 120,),
                          SlideIn(
                              ltr: true,
                              child: iconTextWidget(context,
                                  "assets/images/offer.png", "offers".tr)),
                          Hr(width: 120,),
                          SlideIn(
                              ltr: true,
                              child: iconTextWidget(
                                  context, "assets/images/ask.png", "ask".tr)),
                        ]),
                        SlideIn(
                          child: Image(
                            image: AssetImage('assets/images/header.png'),
                            width: MediaQuery.of(context).size.width * .42,
                          ),
                        ),
                        // Text("asdasdasd")
                      ]),
                  SizedBox(height: 90),
                  // vertical services
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Asdasd");
                          Get.toNamed('/videos');
                        },
                        child: SlideIn(
                          delay:Duration(milliseconds:1000),
                          vertical: true,
                          child: iconTextWidgetVertical(
                              context, "assets/images/videos.png", "videos".tr),
                        ),
                      ),
                      SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          print("Asdasd");
                          Get.toNamed('/articles');
                        },
                        child: SlideIn(
                          delay:Duration(milliseconds:1100),
                          vertical: true,
                          child: iconTextWidgetVertical(context,
                              "assets/images/articles.png", "articles".tr),
                        ),
                      ),
                      SizedBox(width: 15),
                       GestureDetector(
                        onTap: () {
                          print("Asdasd");
                          Get.toNamed('/centers');
                        },
                        child : SlideIn(
                        delay:Duration(milliseconds:1200),
                        vertical: true,
                        child: iconTextWidgetVertical(
                            context, "assets/images/centers.png", "centers".tr),
                       )),
                    ],
                  ),

                  SizedBox(height: 90),
                  Stack(
                    children: <Widget>[
                      SlideIn(
                              delay:Duration(milliseconds:1800),

                        ltr: true,
                        child: CustomGradientContainer(
                          bRadius: 10,
                          strokeWidth: 1,
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: [
                                0.1,
                                0.45
                              ],
                              colors: [
                                Color(0xff292b32).withOpacity(.6),
                                Color(0xff202227).withOpacity(.8),
                              ]),
                          child: SlideIn(
                              delay:Duration(milliseconds:1900),

                        ltr: true,
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/checkup.png'),
                                      height: 70,
                                    ),
                                    Text("checkup".tr,
                                        style:
                                            Theme.of(context).textTheme.bodyText2)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Transform.translate(
                          offset: Offset(2, -1),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff010001),
                                  borderRadius: BorderRadius.circular(15)),
                              child: SlideIn(
                              delay:Duration(milliseconds:2100),

                                child: Image(
                                  image: AssetImage('assets/images/car.png'),
                                  height: 130,
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                ),
                              )),
                        ),
                      ),
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: Transform.translate(
                      //     offset: Offset(-12, 85),
                      //     child: Container(
                      //           color: Color(0xff010001),
                      //           width: 40,
                      //           height: 30,

                      //     ),
                      //   ),)
                    ],
                  ),
                ],
              )),
            ),
          
        ),
      
      bottomNavigationBar: BottomNav(),
    );
  }
}
