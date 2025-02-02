part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = _Loading;
  const factory CategoriesState.loaded(List<String> categories) = _Loaded;
  const factory CategoriesState.error(String message) = _Failed;
}
