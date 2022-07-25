
class User {
  late int id;
  late String name;
  late String email;
  late String img;
  late int cityId;
  late String phone;
  User({
      required this.id,
      required this.name,
      required this.email,
      required this.img,
      required this.cityId,
      required this.phone,
    });
  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    img = json['img'];
    cityId = json['cityId'];
    phone = json['phone'];
  }
}