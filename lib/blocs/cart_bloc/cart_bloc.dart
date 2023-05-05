import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop/domain/models/cart/product_in_cart.dart';
import 'package:online_shop/domain/models/product/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState()) {
    on<AddCartProd>(_onAddCardProd);
    on<CartInit>(_onInitCart);
    on<DeleteCartProd>(_onDeleteCartProd);
  }

  bool isProductInCart(Product product, List<ProductInCart> productInCartList) {
    return productInCartList
        .any((checkedProduct) => checkedProduct.id == product.id);
  }

  void _onAddCardProd(AddCartProd event, Emitter<CartState> emit) {
    final state = this.state;
    final product = event.product;
    final productInCartList = state.productInCartList;
    int index =
        productInCartList.indexWhere((element) => element.id == product.id);
    if (isProductInCart(product, productInCartList)) {
      final List<ProductInCart> list = List.from(productInCartList)
        ..remove(productInCartList[index]);
      list.insert(
          index,
          productInCartList[index]
              .copyWith(quantity: productInCartList[index].quantity + 1));
      emit(CartState(productInCartList: list));
      print(list[index].quantity);
    } else {
      emit(
        CartState(
          productInCartList: List.from(state.productInCartList)
            ..add(
              ProductInCart(id: product.id, quantity: 1),
            ),
        ),
      );
    }
  }

  void _onInitCart(CartInit event, Emitter<CartState> emit) {
    emit(
      CartState(
        productInCartList: state.productInCartList,
      ),
    );
  }

  void _onDeleteCartProd(DeleteCartProd event, Emitter<CartState> emit) {
    
    final state = this.state;
    final product = event.product;
    final productInCartList = state.productInCartList;
    int index =
        productInCartList.indexWhere((element) => element.id == product.id);
    if (isProductInCart(product, productInCartList)) {
      if (productInCartList[index].quantity== 1){
          final List<ProductInCart> list = List.from(productInCartList)
        ..remove(productInCartList[index]);
        emit(CartState(productInCartList: list));
      }else{
final List<ProductInCart> list = List.from(productInCartList)
        ..remove(productInCartList[index]);
      list.insert(
          index,
          productInCartList[index]
              .copyWith(quantity: productInCartList[index].quantity - 1));
      emit(CartState(productInCartList: list));
      }
      
    } else {
      emit(
        CartState(
          productInCartList: List.from(state.productInCartList)
            ..remove(
              productInCartList[index],
            ),
        ),
      );
    }
  }
}
