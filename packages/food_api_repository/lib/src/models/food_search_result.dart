import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_search_result.freezed.dart';

@freezed
class FoodSearchResult with _$FoodSearchResult {
  /// {@macro food_search_result}
  const factory FoodSearchResult({
    /// The name of the food item
    required String name,

    /// URL to the food item's image
    required String imageUrl,
  }) = _FoodSearchResult;
}
