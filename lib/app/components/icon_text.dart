import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtm/app/utils/gredient_contaienr.dart';

Widget iconTextWidget(BuildContext context , String imagePath , String service ){
  return  Container(
    width: MediaQuery.of(context).size.width * .45,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      
        // SvgPicture.asset(
        //   imagePath,
        //   semanticsLabel: service,
        //   width: 30,
        // ),
        Image(
              image: AssetImage(imagePath),
              height: 30,
            ),
            SizedBox(width:10),
        Text(service , style : Theme.of(context).textTheme.bodyText1)
      ],
    ),
  );
}

Widget iconTextWidgetVertical(BuildContext context , String imagePath , String service ){
  return  CustomGradientContainer(
    gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
      0.1,
      0.4,
      0.9
    ], colors: [
      Colors.grey.shade400.withOpacity(.6),
      Colors.grey.shade800.withOpacity(.8),
      Colors.grey.shade700.withOpacity(.5),
    ]),
    bRadius: 15,
    strokeWidth: 1,
      child: Container(
    width: (MediaQuery.of(context).size.width * .3) - 12,
    padding: EdgeInsets.symmetric(vertical:9),
        child: Column(children: [
          //  SvgPicture.asset(
          //   imagePath,
          //   semanticsLabel: service,
          //   width: 50,

          // ),
          Image(
                image: AssetImage(imagePath),
                height: 70,
              ),
            Text(service , style : Theme.of(context).textTheme.bodyText1)
          ],
        ),
      ),
    
  );
}

