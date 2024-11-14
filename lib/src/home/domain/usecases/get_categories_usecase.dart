import 'package:ecommerce_app/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/home/domain/entities/category_entity.dart';
import 'package:ecommerce_app/src/home/domain/repositories/category_repository.dart';

import '../../../../core/resources/data_state.dart';

class GetCategoriesUsecase
    extends UsecaseNoParams<DataState<List<CategoryEntity>>> {
  GetCategoriesUsecase(this._repository);
  final CategoryRepository _repository;

  @override
  Future<DataState<List<CategoryEntity>>> call() async {
    return await _repository.getCategoriesByLevel(0);
  }
}
