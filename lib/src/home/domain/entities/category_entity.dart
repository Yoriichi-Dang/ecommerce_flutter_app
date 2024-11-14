import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int? id;
  final String? title;
  final String? urlKey;
  final String? thumbnailUrl;
  const CategoryEntity({this.id, this.title, this.urlKey, this.thumbnailUrl});
  @override
  // TODO: implement props
  List<Object?> get props => [id, title, urlKey, thumbnailUrl];
}
