import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/parts_controller.dart';

class PartsView extends GetView<PartsController> {
  const PartsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PartsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PartsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
