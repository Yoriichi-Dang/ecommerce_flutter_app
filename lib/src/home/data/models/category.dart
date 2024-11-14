import 'package:ecommerce_app/src/home/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel({
    required int id,
    required String title,
    required String thumbnailUrl,
  }) : super(id: id, title: title, thumbnailUrl: thumbnailUrl);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'thumbnail_url': thumbnailUrl,
    };
  }

  factory CategoryModel.fromJson(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as int? ?? 0,
      title: map['title'] as String? ?? '',
      thumbnailUrl: map['thumbnail_url'] as String? ?? '',
    );
  }
}
