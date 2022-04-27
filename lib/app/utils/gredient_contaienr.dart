import 'package:flutter/widgets.dart';
import 'package:mtm/app/utils/gredient.dart';

class CustomGradientContainer extends StatelessWidget {
  CustomGradientContainer({
    required gradient,
    required this.child,
    required this.bRadius, required this.strokeWidth
  }) : this.painter = CustomGradient(
      gradient: gradient, sWidth: strokeWidth , bRadius: bRadius
  );

  final CustomGradient painter;
  final Widget child;
  // final VoidCallback onPressed;
  final double strokeWidth;
  final double bRadius;     


  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: painter, 
        child: child
    );
  }
}