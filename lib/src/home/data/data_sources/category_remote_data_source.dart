import 'package:ecommerce_app/src/home/data/models/category.dart';

abstract class CategoryRemoteDataSource {
  const CategoryRemoteDataSource();
  Future<List<CategoryModel>> getCategoriesByLevel(int level);
}
