import 'package:dio/dio.dart';
import 'package:online_shop/domain/models/user/user.dart';

class UserRepository {
  Future<User> getUser() async {
    final response = await Dio().get(
      "https://fakestoreapi.com/users/1",
    );
    //final data = response.data as User;
    final data = User.fromJson(response.data);
    //print(dataList.first.rating);
    return data;
  }
}
