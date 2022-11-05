import 'package:get/get.dart';

import '../controllers/centers_controller.dart';

class CentersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CentersController>(
      () => CentersController(),
    );
  }
}
