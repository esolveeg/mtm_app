
import 'package:flutter/widgets.dart';
import 'package:mtm/app/components/SlideIn.dart';

class Hr extends StatelessWidget {
  final double width;
  const Hr({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideIn(
      ltr: true,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 2,
        width:  this.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.1,
            0.4
          ], colors: [
            Color(0xff060507).withOpacity(.6),
            Color(0xff202227).withOpacity(.8),
          ]),
        ),
      ),
    );
  }
}
