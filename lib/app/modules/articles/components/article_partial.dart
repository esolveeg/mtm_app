import 'package:flutter/material.dart';
import 'package:mtm/app/components/logo.dart';
// import 'package:flutter/widgets.dart';

class ArticlePartial extends StatelessWidget {
  final String text;
  final String image;
  final String breif;

  ArticlePartial(
      {Key? key, required this.text, required this.image, required this.breif})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(this.image),
              width: 140,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(children: [
                Text(
                  this.text,
                 
                  
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
              height: 5,
            ),
                Text(
                  this.breif,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  softWrap: false,
                )
              ]),
            )
          ],
        ));
  }
}
