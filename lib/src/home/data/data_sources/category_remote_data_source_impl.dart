import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/network/network_constansts.dart';
import 'package:ecommerce_app/src/home/data/data_sources/category_remote_data_source.dart';
import 'package:ecommerce_app/src/home/data/models/category.dart';

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  final Dio dio;
  const CategoryRemoteDataSourceImpl(this.dio);

  @override
  Future<List<CategoryModel>> getCategoriesByLevel(int level) async {
    try {
      final response = await dio.get(
        '${NetworkConstansts.baseUrl}/categories?level=$level',
      );
      if (response.statusCode == 200) {
        final List<CategoryModel> categories = (response.data as List)
            .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
            .toList();
        return categories;
      } else {
        throw Exception(
            'Failed to load categories. Status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.statusMessage);
      } else {
        throw Exception(e.message);
      }
    }
  }
}
