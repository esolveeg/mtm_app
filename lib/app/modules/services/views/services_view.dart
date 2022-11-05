import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/app/components/bottom_nav.dart';
import 'package:mtm/app/components/main_container.dart';
import 'package:mtm/app/utils/gredient_contaienr.dart';
import '../controllers/services_controller.dart';

class ServicesView extends GetView<ServicesController> {
  const ServicesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Services"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: MainContainer(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 16 ,crossAxisSpacing: 16),
          children: List.generate(controller.services.length, (index) {
            return GestureDetector(
              onTap: (){
                Get.toNamed("/cars");
              },
              child: CustomGradientContainer(
                gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                  0.1,
                  0.45,
                  1
                ], colors: [
                  Color(0xff292b32).withOpacity(1),
                  Color(0xff202227).withOpacity(.8),
                  Color(0xff202227).withOpacity(1),
                ]),
                bRadius: 15,
                strokeWidth: 1,
                child: Container(
                  // width: (MediaQuery.of(context).size.width * .3) - 12,
                  padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 3),
                  child: Column(
                    children: [
                      Image(
              image: AssetImage(controller.services[index].img),
              height: 90,
                      ),
                      Text(controller.services[index].name, style: Theme.of(context).textTheme.headline1 , textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
