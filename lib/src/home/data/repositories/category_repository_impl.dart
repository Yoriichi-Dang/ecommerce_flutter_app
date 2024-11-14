import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/resources/data_state.dart';
import 'package:ecommerce_app/src/home/data/data_sources/category_remote_data_source.dart';
import 'package:ecommerce_app/src/home/domain/entities/category_entity.dart';
import 'package:ecommerce_app/src/home/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  const CategoryRepositoryImpl(this._remoteDataSource);
  final CategoryRemoteDataSource _remoteDataSource;
  @override
  Future<DataState<List<CategoryEntity>>> getCategoriesByLevel(
      int level) async {
    try {
      final result = await _remoteDataSource.getCategoriesByLevel(level);
      final categories = result
          .map((e) => CategoryEntity(
                id: e.id,
                title: e.title,
                thumbnailUrl: e.thumbnailUrl,
              ))
          .toList();
      return DataSuccess(categories);
    } on DioException catch (e) {
      return DataError(e);
    }
  }
}
