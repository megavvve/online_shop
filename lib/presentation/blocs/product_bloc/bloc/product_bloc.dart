import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:online_shop/data/repository/products_data_repository.dart';
import 'package:online_shop/domain/models/product/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(const ProductState()) {
    on<ProductInit>(_onProdInit);
  }
  Future<void> _onProdInit(
      ProductInit event, Emitter<ProductState> emit) async {
    final List<Product> prodList = await ProductsDataRepository().getProductsList();

    emit(
      ProductState(
        prodList: prodList,
      ),
    );
  }
}
