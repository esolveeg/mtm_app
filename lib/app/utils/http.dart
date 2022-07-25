import 'package:get/get.dart';

class Http extends GetConnect {
  static final Http _instance = Http._internal();
  factory Http() {
    _instance.httpClient.baseUrl = 'http://192.168.1.40:5000/api/';   
    return _instance;
  }
  // httpClient.addAuthenticator((request) async {
  //     final response = await get("http://yourapi/token");
  //     final token = response.body['token'];
  //     // Set the header
  //     request.headers['Authorization'] = "$token";
  //     return request;
  //   });
  Http._internal();
}
