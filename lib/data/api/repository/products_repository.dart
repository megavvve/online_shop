import 'package:dio/dio.dart';
import 'package:online_shop/domain/models/product/product.dart';

class ProductsRepository {
  Future<List<Product>> getProductsList() async {
    final response = await Dio().get(
      "https://fakestoreapi.com/products",
    );
    final data = response.data as List<dynamic>;
    final dataList = data.map((item) => Product.fromJson(item)).toList();
    //print(dataList.first.rating);
    return dataList;
  }
}
