import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:online_shop/data/api/repository/products_repository.dart';
import 'package:online_shop/domain/models/product/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState()) {
    on<ProductInit>(_onProdInit);
  }
  Future<void> _onProdInit(
      ProductInit event, Emitter<ProductState> emit) async {
    final List<Product> prodList = await ProductsRepository().getProductsList();

    emit(
      ProductState(
        prodList: prodList,
      ),
    );
  }
}
