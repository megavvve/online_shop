part of 'product_bloc.dart';

 class ProductState extends Equatable {
  final List<Product> prodList;

  ProductState({this.prodList = const <Product>[]});

  @override
  List<Object> get props => [];
}

//class ProductInitial extends ProductState {}
