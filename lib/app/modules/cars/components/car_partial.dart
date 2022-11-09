import 'package:flutter/material.dart';
import 'package:mtm/app/components/btn.dart';
import 'package:mtm/app/data/models/service.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CarPartial extends StatelessWidget {
  final Service car;

  CarPartial({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        openVideo();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/images/mg_6.webp'),
            height: 80,
          ),
          Container(
            color: Color.fromARGB(255, 43, 40, 40),
            width: double.infinity,
            // height: 85,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

            child: Column(
              children: [
                Text(
                  car.name,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      // height: 1.5,
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "sydan new",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Btn(text: "buy", submit: () {})
        ],
      ),
    );
  }

  openVideo() async {
    if (await canLaunchUrlString(car.url)) {
      await launchUrlString(car.url);
    } else {
      throw 'Could not launch $car.url';
    }
  }
}
