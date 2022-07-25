import 'package:flutter/material.dart';
import 'package:mtm/app/utils/gredient_contaienr.dart';

Widget iconTextWidget(BuildContext context, String imagePath, String service) {
  return Container(
    width: MediaQuery.of(context).size.width * .45,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(imagePath),
          width: 50,
        ),
        SizedBox(width: 10),
        Text(service, style: Theme.of(context).textTheme.bodyText1)
      ],
    ),
  );
}

Widget iconTextWidgetVertical(
    BuildContext context, String imagePath, String service) {
  return CustomGradientContainer(
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
      width: (MediaQuery.of(context).size.width * .3) - 12,
      padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 3),
      child: Column(
        children: [
          Image(
            image: AssetImage(imagePath),
            height: 90,
          ),
          Text(service, style: Theme.of(context).textTheme.bodyText2)
        ],
      ),
    ),
  );
}
