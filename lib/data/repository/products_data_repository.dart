import 'package:dio/dio.dart';
import 'package:online_shop/data/api/models/api_product.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/domain/repository/products_repository.dart';

class ProductsDataRepository implements ProductsRepository {
  @override
  Future<List<Product>> getProductsList() async {
    final response = await Dio().get(
      "https://fakestoreapi.com/products",
    );
    final data = response.data as List<dynamic>;
    final dataList = data.map((item) => Product.fromJson(item)).toList();
    return dataList;
  }
  
  

}
