import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget iconTextWidget(BuildContext context , String imagePath , String service ){
  return  Row(children: [
      Text('img' , style : Theme.of(context).textTheme.bodyText1), 
      Text(service , style : Theme.of(context).textTheme.bodyText1)
    ],
  );
}

Widget iconTextWidgetVertical(BuildContext context , String imagePath , String service ){
  return  Container(
    padding: EdgeInsets.all(15),
    width: (MediaQuery.of(context).size.width * .3) - 15,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color(0xffaaafb4))
    ),
    child: Column(children: [
        Text('img' , style : Theme.of(context).textTheme.bodyText1), 
        Text(service , style : Theme.of(context).textTheme.bodyText1)
      ],
    ),
  );
}

