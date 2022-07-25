import 'package:flutter/widgets.dart';
class MainContainer extends StatelessWidget {
  final Widget child;

  MainContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 700),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: RadialGradient(
          center: Alignment(0, -0.9),
          radius: 0.8,
          colors: <Color>[
            Color(0xff46424F),
            Color(0xff010001),
            Color(0xff010001),
          ],
          stops: <double>[0.2, 0.77, 1.0],
        )),
        child: child);
  }
}
