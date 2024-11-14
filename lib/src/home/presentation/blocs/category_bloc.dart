import 'package:ecommerce_app/src/home/domain/entities/category_entity.dart';
import 'package:ecommerce_app/src/home/domain/usecases/get_categories_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoriesUsecase _getCategoriesUsecase;
  CategoryBloc(this._getCategoriesUsecase) : super(CategoryState()) {
    on<CategoryEvent>(getCategoryEvent);
  }
  Future<void> getCategoryEvent(
      CategoryEvent event, Emitter<CategoryState> emit) async {
    emit(CategoryState(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    final result = await _getCategoriesUsecase.call();
    result.fold(
      (failure) =>
          emit(state.copyWith(error: failure.message, isLoading: false)),
      (success) => emit(state.copyWith(placeList: success, isLoading: false)),
    );
  }
}
