
import 'package:flutter/material.dart';
import 'package:mtm/app/data/models/service.dart';
import 'package:url_launcher/url_launcher_string.dart';
class CarPartial extends StatelessWidget {
  final Service car;

  CarPartial(
      {Key? key, required this.car})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()  {
        openVideo();
      },
      child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(car.img),
            
              ),
              
              Container(
                color: Color.fromARGB(255, 43, 40, 40),
                width: double.infinity,
                height: 65,
                child: Center(
                  child: Text(
                    
                        car.name,
                       
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          height: 1.5,
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                ),
              ),
            ],
          )),
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
