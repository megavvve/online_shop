import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:online_shop/data/api/repository/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState()) {
    on<CategoryInit>(_onCategoryInit);
  }
  Future<void> _onCategoryInit(
      CategoryInit event, Emitter<CategoryState> emit) async {
    final List<String> categoryList = await CategoryRepository().getCategories();

    emit(
      CategoryState(
        categoryList: categoryList,
      ),
    );
  }
}
