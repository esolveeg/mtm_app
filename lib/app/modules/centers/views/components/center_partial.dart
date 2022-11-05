
import 'package:flutter/material.dart';
import 'package:mtm/app/data/models/center.dart';
import 'package:url_launcher/url_launcher_string.dart';
class CenterPartial extends StatelessWidget {
  final ServiceCenter center;

  CenterPartial(
      {Key? key, required this.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()  {
        // openCenter();
      },
      child:  Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            width: double.infinity,
          
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("center name",
                            style: Theme.of(context).textTheme.headline1),
                             SizedBox(
                      height: 10),
                        Row(
                          children: [
                            Icon(Icons.star_border , color: Colors.white,),
                            Icon(Icons.star_border , color: Colors.white,),
                            Icon(Icons.star_border , color: Colors.white,),
                            Icon(Icons.star_border , color: Colors.white,),
                            Icon(Icons.star_border , color: Colors.white,),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                            Icon(Icons.location_on_outlined , color: Colors.white,),
                            SizedBox(
                      width: 10),
                            Icon(Icons.phone_outlined , color: Colors.white,),
                    // SizedBox(
                    //   width: 60,
                    //   child:RoundedBtn(icon: "assets/images/location.svg", text: "" , iconSize: 20,) ,
                    // ),
                    // SvgPicture.asset("assets/images/phone.svg",
                    //     width: 25.0, height: 25.0, color: Colors.white),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    // SvgPicture.asset("assets/images/location.svg",
                    //     width: 25.0, height: 25.0, color: Colors.white),
                  ],
                )
              ],
            )),
      
            
          );
  }

}
