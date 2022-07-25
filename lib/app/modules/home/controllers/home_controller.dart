import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mtm/app/utils/gredient.dart';
import 'dart:io';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> offset;
  Rx<Gradient> initalGradient = RadialGradient(
    center: Alignment(0, -0.9),
    radius: 0.8,
    colors: <Color>[
      Color(0xff010001),
      Color(0xff010001),
      Color(0xff010001),
    ],
    stops: <double>[0.2, 0.77, 1.0],
  ).obs;

  Future animateBg() async {
    Future.delayed(Duration(milliseconds: 1500), () {
      initalGradient.value = RadialGradient(
        center: Alignment(0, -0.9),
        radius: 0.8,
        colors: <Color>[
          Color(0xff46424F),
          Color(0xff010001),
          Color(0xff010001),
        ],
        stops: <double>[0.2, 0.77, 1.0],
      );
    });
  }

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    offset = Tween<Offset>(end: Offset(1.0, 0.0), begin: Offset.zero)
        .animate(animationController);

    animateBg();

    
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    animationController.dispose();
  }
}
