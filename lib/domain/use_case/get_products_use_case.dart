import 'package:online_shop/data/api/repository/products_repository.dart';
import 'package:online_shop/domain/models/product/product.dart';

class GetProductsUseCase {
  final ProductsRepository _productRepository;

  GetProductsUseCase(this._productRepository);


  Future<List<Product>> execute() async {
    return _productRepository.getProductsList();
  }
}
