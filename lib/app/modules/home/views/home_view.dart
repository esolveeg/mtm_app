import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/app/utils/gredient_contaienr.dart';
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
            Color(0xFF433e4c),
            Color(0xFF222222),
            Color(0xFF111111),
          ],
          stops: <double>[0.2, 0.7, 1.0],
        )),
        child: SingleChildScrollView(
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        
                        iconTextWidget(context, "assets/images/services.png",
                            "services".tr),
                        Hr(),
                        iconTextWidget(
                            context, "assets/images/offers.png", "offers".tr),
                        Hr(),
                        iconTextWidget(
                            context, "assets/images/ask.png", "ask".tr),
                      ]),
                      Image(
                        image: AssetImage('assets/images/counter.png'),
                        width: MediaQuery.of(context).size.width * .4,
                      ),
                      // Text("asdasdasd")
                    ]),
                SizedBox(height: 30),
                // vertical services
                Row(
                  children: [
                    iconTextWidgetVertical(
                        context, "assets/images/videos.png", "videos".tr),
                    SizedBox(width: 15),
                    iconTextWidgetVertical(
                        context, "assets/images/articles.png", "articles".tr),
                    SizedBox(width: 15),
                    iconTextWidgetVertical(
                        context, "assets/images/settings.png", "ask".tr),
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  children: <Widget>[
                    CustomGradientContainer(
                      bRadius: 10,
                      strokeWidth: 2,
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, stops: [
                        0.1,
                        0.4,
                        0.9
                      ], colors: [
                        Colors.grey.shade400.withOpacity(.5),
                        Colors.grey.shade800.withOpacity(.4),
                        Colors.grey.shade700.withOpacity(.5),
                      ]),
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/videos.png'),
                                height: 70,
                              ),
                              Text("checkup".tr,
                                  style: Theme.of(context).textTheme.bodyText1)
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Align(
                      alignment: Alignment.centerRight,
                      child: Transform.translate(
                        offset: Offset(10, -1),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff111111),
                              borderRadius: BorderRadius.circular(25)),
                          child: Image(
                            image: AssetImage('assets/images/car.png'),
                            height: 130,
                            width: MediaQuery.of(context).size.width * .45,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF111111),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            label: 'home'.tr,
            icon: Icon(Icons.roofing),
          ),
          BottomNavigationBarItem(
            label: 'offers',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'ask'.tr,
            icon: Icon(Icons.add_circle_outline),
          ),
          BottomNavigationBarItem(
            label: 'profile'.tr,
            icon: Icon(
              Icons.person_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: 'menu'.tr,
            icon: Icon(
              Icons.menu_outlined,
            ),
          )
        ],
      ),
    );
  }
}

class Hr extends StatelessWidget {
  const Hr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 1.5,
      width: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.1,
          0.4,
          0.9
        ], colors: [
          Colors.grey.shade900.withOpacity(.9),
          Colors.black.withOpacity(.9),
          Colors.grey.shade700.withOpacity(.9),
        ]),
      ),
    );
  }
}
