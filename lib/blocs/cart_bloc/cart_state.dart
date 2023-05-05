part of 'cart_bloc.dart';


 class CartState extends Equatable{
  final List<ProductInCart> productInCartList;
  const CartState({ this.productInCartList = const <ProductInCart>[] });
  @override
  List<Object> get props => [productInCartList];
}

//class CartInitial extends CartState {}
