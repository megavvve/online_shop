import 'package:online_shop/domain/models/user/address/address.dart';
import 'package:online_shop/domain/models/user/address/geolocation.dart';
import 'package:online_shop/domain/models/user/name.dart';

class User {
  final int id;
  final String email;
  final String username;
  final String password;
  final Name name;
  final Address address;
  final String phone;

  User(
      {required this.id,
      required this.email,
      required this.username,
      required this.password,
      required this.name,
      required this.address,
      required this.phone});
  static User defaultValue = User(
      id: 0,
      email: '',
      username: '',
      password: '',
      name: Name(firstname: '', lastname: ''),
      address: Address(
        city: '',
        street: '',
        number: 0,
        zipcode: '',
        geolocation: Geolocation(lat: '', long: ''),
      ),
      phone: '');  
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      email: json['email'] as String,
      username: json['username'] as String,
      name: Name.fromJson(
        json['name'] as Map<String, dynamic>,
      ),
      password: json['password'] as String,
      phone: json['phone'] as String,
      address: Address.fromJson(
        json['address'] as Map<String, dynamic>,
      ),
    );
  }
}
