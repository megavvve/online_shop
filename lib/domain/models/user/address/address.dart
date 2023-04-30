import 'package:online_shop/domain/models/user/address/geolocation.dart';

class Address {
  final String city;
  final String street;
  final int number;
  final String zipcode;
  final Geolocation geolocation;

  Address(this.city, this.street, this.number, this.zipcode, this.geolocation);
}
