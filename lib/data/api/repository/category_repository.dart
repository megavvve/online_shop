import 'package:dio/dio.dart';
import 'package:online_shop/domain/models/categories.dart';


class CategoryRepository {
  Future<List<String>> getCategories() async {
    final response = await Dio().get(
      "https://fakestoreapi.com/products/categories",
    );
    final data = List<String>.from(response.data);
  return data;
  }
}
