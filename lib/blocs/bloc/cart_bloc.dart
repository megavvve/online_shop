import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:online_shop/domain/models/product_card.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState()) {
    on<AddCartProd>(_onAddCardProd);
    on<CartInit>(_onInitCart);
    on<DeleteCartProd>(_onDeleteCartProd);
  }
  void _onAddCardProd(AddCartProd event, Emitter<CartState> emit) {
    final state = this.state;
    final productCard = event.productCard;

    emit(
      CartState(
        prodCardList: List.from(state.prodCardList)
          ..add(
            productCard,
          ),
      ),
    );
  }

  void _onInitCart(CartInit event, Emitter<CartState> emit) {
    emit(
      CartState(
        prodCardList: state.prodCardList,
      ),
    );
  }

  void _onDeleteCartProd(DeleteCartProd event, Emitter<CartState> emit) {
    final state = this.state;

    emit(
      CartState(
        prodCardList: List.from(state.prodCardList)
          ..remove(
            event.productCard,
          ),
      ),
    );
  }
}
