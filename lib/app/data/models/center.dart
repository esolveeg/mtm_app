
class ServiceCenter {
  late int id;
  late String name;
  late int rate;
  late String img;
  ServiceCenter({
      required this.id,
      required this.name,
      required this.rate,
      required this.img,
    });
  ServiceCenter.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    name = json['rate'];
    img = json['img'];
  }
}