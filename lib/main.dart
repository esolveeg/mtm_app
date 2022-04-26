import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/localstring.dart';
import 'app/routes/app_pages.dart';
void main() {
  runApp(
    GetMaterialApp(
      title: "Mtm",
      debugShowCheckedModeBanner: false,
      locale: Locale('en', 'US'),
      translations: LocaleString(),
      // defaultTransition: const FadeTransition(opacity: 0.0),
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Color(0xfff78e05),
        backgroundColor:Color(0xff222222),
        fontFamily: 'En',
        dividerColor: Colors.black,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(0xffbdc1c6)),
          bodyText1: TextStyle(fontSize: 16.0,color: Color(0xffbdc1c6)),
        ),
      ),
      getPages: AppPages.routes,
    ),
  );
}
