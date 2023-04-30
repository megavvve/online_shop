part of 'cart_bloc.dart';


 class CartState extends Equatable{
  final List<Product> prodList;
  const CartState({this.prodList = const <Product>[]});
  @override
  List<Object> get props => [prodList];
}

//class CartInitial extends CartState {}
