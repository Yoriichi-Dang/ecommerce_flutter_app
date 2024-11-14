part of 'category_bloc.dart';

class CategoryState extends Equatable {
  final bool isLoading;
  final String? error;
  final List<CategoryEntity> categories;
  const CategoryState({
    this.isLoading = false,
    this.error,
    this.categories = const [],
  });
  @override
  List<Object?> get props => [isLoading, categories];
  CategoryState copyWith({
    bool? isLoading,
    List<CategoryEntity>? categories,
  }) {
    return CategoryState(
      isLoading: isLoading ?? this.isLoading,
      categories: categories ?? this.categories,
    );
  }
}
