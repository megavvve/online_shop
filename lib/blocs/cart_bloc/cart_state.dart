part of 'cart_bloc.dart';

class CartState extends Equatable {
  final Cart cart;
  final List<Cart> cartList;
  const CartState({this.cartList = const <Cart>[], required this.cart});
  @override
  List<Object> get props => [cart,cartList];
}

//class CartInitial extends CartState {}
