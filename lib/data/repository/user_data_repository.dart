import 'package:dio/dio.dart';
import 'package:online_shop/domain/models/user/user.dart';
import 'package:online_shop/domain/repository/user_repository.dart';

class UserDataRepository implements UserRepository{
  @override
  Future<User> getUser() async {
    final response = await Dio().get(
      "https://fakestoreapi.com/users/1",
    );
    final data = User.fromJson(response.data);
    return data;
  }
}
