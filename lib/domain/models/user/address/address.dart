import 'package:online_shop/domain/models/user/address/geolocation.dart';

class Address {
  final String city;
  final String street;
  final int number;
  final String zipcode;
  final Geolocation geolocation;

  Address({required this.city, required this.street, required this.number, required this.zipcode, required this.geolocation,});
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'] as String,
      street: json['street'] as String,
      number: json['number'] as int,
      zipcode: json['zipcode'] as String,
      geolocation: Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>,),
    );
  }
}
