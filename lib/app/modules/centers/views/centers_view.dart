import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/app/components/bottom_nav.dart';
import 'package:mtm/app/components/hr.dart';
import 'package:mtm/app/components/main_container.dart';
import 'package:mtm/app/data/models/center.dart';
import 'package:mtm/app/modules/articles/components/article_partial.dart';
import 'package:mtm/app/modules/centers/views/components/center_partial.dart';

import '../controllers/centers_controller.dart';

class CentersView extends GetView<CentersController> {
  const CentersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:Text("Centers"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: MainContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                CenterPartial(center: ServiceCenter(id: 1,name: "center  1" , rate: 4,img: 'assets/images/logo.png'),),
                Hr(width: double.infinity,),
                
                CenterPartial(center: ServiceCenter(id: 1,name: "center  1" , rate: 4,img: 'assets/images/logo.png'),),
                Hr(width: double.infinity,),
                CenterPartial(center: ServiceCenter(id: 1,name: "center  1" , rate: 4,img: 'assets/images/logo.png'),),
                
                Hr(width: double.infinity,),
                CenterPartial(center: ServiceCenter(id: 1,name: "center  1" , rate: 4,img: 'assets/images/logo.png'),),
                
                Hr(width: double.infinity,),
                CenterPartial(center: ServiceCenter(id: 1,name: "center  1" , rate: 4,img: 'assets/images/logo.png'),),
                
             
              ],
            ),
          ),
        )
      ),
      bottomNavigationBar: BottomNav(),

    );
  }
}
