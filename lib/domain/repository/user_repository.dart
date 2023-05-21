import 'package:online_shop/domain/models/user/user.dart';

abstract class UserRepository {
  Future<User> getUser() ;
}
