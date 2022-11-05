import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/app/components/hr.dart';
import 'package:mtm/app/components/logo.dart';
import 'package:mtm/app/components/main_container.dart';
import 'package:mtm/app/modules/articles/components/article_partial.dart';
import 'package:mtm/app/components/bottom_nav.dart';
import 'package:mtm/app/modules/home/views/home_view.dart';

import '../controllers/articles_controller.dart';

class ArticlesView extends GetView<ArticlesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:Text("Articles"),
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
                ArticlePartial(text: "New cars are finally back in stock", image: "assets/images/article_1.jpg", breif: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ncididunt ut labore et dolore "),
                Hr(width: double.infinity,),
                ArticlePartial(text: "New cars are finally back in stock", image: "assets/images/article_1.jpg", breif: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ncididunt ut labore et dolore "),
                Hr(width: double.infinity,),
                ArticlePartial(text: "New cars are finally back in stock", image: "assets/images/article_1.jpg", breif: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ncididunt ut labore et dolore "),
                Hr(width: double.infinity,),
                ArticlePartial(text: "New cars are finally back in stock", image: "assets/images/article_1.jpg", breif: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ncididunt ut labore et dolore "),
                Hr(width: double.infinity,),
                ArticlePartial(text: "New cars are finally back in stock", image: "assets/images/article_1.jpg", breif: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor ncididunt ut labore et dolore "),
             
              ],
            ),
          ),
        )
      ),
      bottomNavigationBar: BottomNav(),

    );
  }
}
