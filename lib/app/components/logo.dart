import 'package:flutter/widgets.dart';
class Logo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image(
          image: AssetImage("assets/images/logo.png"),
          width: 140,
        );
  }
}
