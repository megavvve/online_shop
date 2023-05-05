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
  final Product product;

  const AddCartProd( {required this.product});
  @override
  List<Object> get props => [];
}
class DeleteCartProd extends CartEvent {
  final Product product;

  const DeleteCartProd( {required this.product});
  @override
  List<Object> get props => [];
}

