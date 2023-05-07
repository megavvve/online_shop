part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
  @override
  List<Object> get props => [];
}

class CartInit extends CartEvent {
  final int id;
  final int userId;
  final String date;

  const CartInit({required this.id, required this.userId, required this.date});
  @override
  List<Object> get props => [];
}

class AddCartProd extends CartEvent {
  final int productId;

  const AddCartProd({required this.productId});
  @override
  List<Object> get props => [];
}

class DeleteCartProd extends CartEvent {
  final int productId;

  const DeleteCartProd({required this.productId});
  @override
  List<Object> get props => [];
}

class AddCartToList extends CartEvent{
  final Cart cart;
  const AddCartToList({required this.cart,});
  @override
  List<Object> get props => [];
}
class DeleteCartToList extends CartEvent{
  final Cart cart;
  const DeleteCartToList({required this.cart,});
  @override
  List<Object> get props => [];
}
class ResetListEvent extends CartEvent {
  @override
  List<Object> get props => [];
}
