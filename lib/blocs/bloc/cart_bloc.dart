import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:online_shop/domain/models/product/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState()) {
    on<AddCartProd>(_onAddCardProd);
    on<CartInit>(_onInitCart);
    on<DeleteCartProd>(_onDeleteCartProd);
  }
  void _onAddCardProd(AddCartProd event, Emitter<CartState> emit) {
    final state = this.state;
    final product = event.product;

    emit(
      CartState(
        prodList: List.from(state.prodList)
          ..add(
            product,
          ),
      ),
    );
  }

  void _onInitCart(CartInit event, Emitter<CartState> emit) {
    emit(
      CartState(
        prodList: state.prodList,
      ),
    );
  }

  void _onDeleteCartProd(DeleteCartProd event, Emitter<CartState> emit) {
    final state = this.state;

    emit(
      CartState(
        prodList: List.from(state.prodList)
          ..remove(
            event.product,
          ),
      ),
    );
  }
}
