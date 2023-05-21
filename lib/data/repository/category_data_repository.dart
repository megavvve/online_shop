import 'package:dio/dio.dart';
import 'package:online_shop/domain/repository/category_repository.dart';

class CategoryDataRepository implements CategoryRepository {
  @override
  Future<List<String>> getCategories() async {
    final response = await Dio().get(
      "https://fakestoreapi.com/products/categories",
    );
    final data = List<String>.from(response.data);
  return data;
  }
}
