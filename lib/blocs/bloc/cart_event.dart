part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
  @override
  List<Object> get props => [];
}
class CartInit extends CartEvent{
  @override
  List<Object> get props => [];
}
class AddCartProd extends CartEvent {
  final ProductCard productCard;

  const AddCartProd( {required this.productCard});
  @override
  List<Object> get props => [];
}
class DeleteCartProd extends CartEvent {
  final ProductCard productCard;

  const DeleteCartProd( {required this.productCard});
  @override
  List<Object> get props => [];
}

