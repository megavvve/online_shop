part of 'product_bloc.dart';

 class ProductState extends Equatable {
  final List<Product> prodList;

  const ProductState({this.prodList = const <Product>[]});

  @override
  List<Object> get props => [];
}

