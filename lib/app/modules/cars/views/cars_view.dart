import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/app/components/bottom_nav.dart';
import 'package:mtm/app/components/main_container.dart';
import 'package:mtm/app/modules/cars/components/car_partial.dart';
import '../controllers/cars_controller.dart';

class CarsView extends GetView<CarsController> {
  const CarsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // title: Text("Buy Car"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: MainContainer(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
          children: List.generate(controller.cars.length, (index) {
            return CarPartial(car: controller.cars[index]);
          }),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
