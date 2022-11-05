import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/app/components/bottom_nav.dart';
import 'package:mtm/app/components/hr.dart';
import 'package:mtm/app/components/main_container.dart';
import 'package:mtm/app/modules/videos/components/video_partial.dart';

import '../controllers/videos_controller.dart';

class VideosView extends GetView<VideosController> {
  const VideosView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:Text("Videos"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body:MainContainer(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        crossAxisSpacing: 16
          ),
          children:List.generate(controller.videos.length,(index){
            return VideoPartial(video: controller.videos[index]);
          }),
        ),
      ),
     
      bottomNavigationBar: BottomNav(),

    );
  }
}
