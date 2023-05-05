part of 'category_bloc.dart';

 class CategoryState extends Equatable {
  final List<String> categoryList;

   const CategoryState({this.categoryList = const <String>[]});

  @override
  List<Object> get props => [categoryList];
}

//class CategoryInitial extends CategoryState {}
