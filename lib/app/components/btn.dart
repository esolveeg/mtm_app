import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Btn extends StatelessWidget {
  final String text;
  final Function submit;

  Btn({Key? key, required this.text, required this.submit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
       child : ElevatedButton(
              child: Text(text),
              onPressed: () => {submit()},
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Background color
              ),
            ),);
    
  }
}
