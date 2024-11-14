import 'package:ecommerce_app/core/resources/data_state.dart';
import 'package:ecommerce_app/src/home/domain/entities/category_entity.dart';

abstract class CategoryRepository {
  Future<DataState<List<CategoryEntity>>> getCategoriesByLevel(int level);
}
