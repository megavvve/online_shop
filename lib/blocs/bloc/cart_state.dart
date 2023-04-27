part of 'cart_bloc.dart';


 class CartState extends Equatable{
  final List<ProductCard> prodCardList;
  const CartState({this.prodCardList = const <ProductCard>[]});
  @override
  List<Object> get props => [prodCardList];
}

//class CartInitial extends CartState {}
