part of 'search_food_bloc.dart';

@freezed
class SearchFoodState with _$SearchFoodState {
  const factory SearchFoodState.success({
    @Default('') String query,
    @Default([]) List<FoodSearchResult> searchResults,
  }) = _Success;
}
