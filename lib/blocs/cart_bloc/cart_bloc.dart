import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop/domain/models/cart/cart.dart';
import 'package:online_shop/domain/models/cart/product_in_cart.dart';
import 'package:online_shop/domain/models/product/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState(cart: Cart.defaultCart)) {
    on<AddCartProd>(_onAddCardProd);
    on<CartInit>(_onInitCart);
    on<DeleteCartProd>(_onDeleteCartProd);
    on<AddCartToList>(_onAddCartToList);
    on<DeleteCartToList>(_onDeleteCartToList);
    on<ResetListEvent>(_onResetListEvent);
  }

  bool isProductInCart(int productId, List<ProductInCart> productInCartList) {
    return productInCartList
        .any((checkedProduct) => checkedProduct.id == productId);
  }

  void _onAddCardProd(AddCartProd event, Emitter<CartState> emit) {
    final state = this.state;
    final productId = event.productId;
    final cart = state.cart;
    final productInCartList = state.cart.products;
    int index =
        productInCartList.indexWhere((element) => element.id == productId);
    if (isProductInCart(productId, productInCartList)) {
      final List<ProductInCart> list = List.from(
        productInCartList,
      )..remove(
          productInCartList[index],
        );
      list.insert(
        index,
        productInCartList[index].copyWith(
          quantity: productInCartList[index].quantity + 1,
        ),
      );
      emit(
        CartState(
          cartList: state.cartList,
          cart: cart.copyWith(products: list),
        ),
      );
    } else {
      emit(
        CartState(
          cartList: state.cartList,
          cart: cart.copyWith(
            products: List.from(
              productInCartList,
            )..add(
                ProductInCart(
                  id: productId,
                  quantity: 1,
                ),
              ),
          ),
        ),
      );
    }
  }

  void _onInitCart(CartInit event, Emitter<CartState> emit) {
    emit(
      CartState(
        cart: Cart(
          id: event.id,
          userId: event.userId,
          date: event.date,
          products: state.cart.products,
        ),
        cartList: state.cartList,
      ),
    );
  }

  void _onResetListEvent(ResetListEvent event, Emitter<CartState> emit) {
    emit(
      CartState(
        cart: state.cart.copyWith(products: []),
        cartList: state.cartList,
      ),
    );
  }

  void _onDeleteCartProd(DeleteCartProd event, Emitter<CartState> emit) {
    final state = this.state;
    final productId = event.productId;
    final cart = state.cart;
    final productInCartList = state.cart.products;
    int index =
        productInCartList.indexWhere((element) => element.id == productId);
    if (isProductInCart(productId, productInCartList)) {
      if (productInCartList[index].quantity == 1) {
        final List<ProductInCart> list = List.from(
          productInCartList,
        )..remove(productInCartList[index]);
        emit(
          CartState(
            cartList: state.cartList,
            cart: cart.copyWith(
              products: list,
            ),
          ),
        );
      } else {
        final List<ProductInCart> list = List.from(
          productInCartList,
        )..remove(productInCartList[index]);
        list.insert(
          index,
          productInCartList[index].copyWith(
            quantity: productInCartList[index].quantity - 1,
          ),
        );
        emit(
          CartState(
            cartList: state.cartList,
            cart: cart.copyWith(
              products: list,
            ),
          ),
        );
      }
    } else {
      List<ProductInCart> list = List.from(
        state.cart.products,
      )..remove(
          productInCartList[index],
        );
      emit(
        CartState(
          cartList: state.cartList,
          cart: cart.copyWith(
            products: list,
          ),
        ),
      );
    }
  }

  void _onAddCartToList(AddCartToList event, Emitter<CartState> emit) {
    final state = this.state;
    final cart = event.cart;
    //final Cart cart = Cart.defaultCart;
    emit(CartState(cartList: List.from(state.cartList)..add(cart), cart: cart));
  }

  void _onDeleteCartToList(DeleteCartToList event, Emitter<CartState> emit) {
    emit(
      CartState(
        cart: event.cart,
        cartList: state.cartList
          ..remove(
            event.cart,
          ),
      ),
    );
  }
}
