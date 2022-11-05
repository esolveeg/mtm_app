
import 'package:flutter/material.dart';
import 'package:mtm/app/data/models/video.dart';
import 'package:url_launcher/url_launcher_string.dart';
class VideoPartial extends StatelessWidget {
  final Video video;

  VideoPartial(
      {Key? key, required this.video})
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
                image: AssetImage(video.img),
            
              ),
              
              Container(
                color: Color.fromARGB(255, 43, 40, 40),
                width: double.infinity,
                height: 65,
                child: Center(
                  child: Text(
                    
                        video.name,
                       
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
      if (await canLaunchUrlString(video.url)) {
        await launchUrlString(video.url);
      } else {
        throw 'Could not launch $video.url';
      }
  }
}
