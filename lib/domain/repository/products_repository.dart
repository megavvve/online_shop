import 'package:online_shop/domain/models/product/product.dart';

abstract class ProductsRepository {
  Future<List<Product>> getProductsList();
}
