
class Service {
  late int id;
  late String name;
  late String url;
  late String img;
  Service({
      required this.id,
      required this.name,
      required this.url,
      required this.img,
    });
  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    name = json['url'];
    img = json['img'];
  }
}