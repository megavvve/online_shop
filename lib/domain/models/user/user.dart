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

  User(this.id, this.email, this.username, this.password, this.name,
      this.address, this.phone);
  static User user1 = User(
    1,
    'support@mail.ru',
    'megavvve',
    'qwerty',
    Name('Sergey', 'Akopov'),
    Address('Rostov-on-Don', 'Kirovskiy', 75, '543553',
        Geolocation('61', '32432432')),
    '+79094043953',
  );
}
