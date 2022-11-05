import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mtm/localstring.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
  

void main() async {
  await dotenv.load(fileName: ".env");
  
  runApp(
    GetMaterialApp(
      title: "Mtm",
      debugShowCheckedModeBanner: false,
      locale: Locale('en', 'US'),
      translations: LocaleString(),
      defaultTransition:Transition.leftToRight,
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Color(0xfff78e05),
        backgroundColor:Color(0xff222222),
        fontFamily: 'En',
        dividerColor: Colors.black,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color(0xffffffff)),
          bodyText1: TextStyle(fontSize: 16,color: Color(0xff807d85)),
          bodyText2: TextStyle(fontSize: 12.5,color: Color(0xff807d85)),
        ),
      ),
      getPages: AppPages.routes,
    ),
  );
}
