import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_nutrients.freezed.dart';

@freezed
class FoodNutrients with _$FoodNutrients {
  /// {@macro food_nutrients}
  const factory FoodNutrients({
    /// The name of the food item
    required String name,

    /// Serving size in grams
    required double grams,

    /// Total calories
    required double calories,

    /// Protein content in grams
    required double protein,

    /// Carbohydrate content in grams
    required double carbs,

    /// Fat content in grams
    required double fat,

    /// Saturated fat content in grams
    required double saturatedFat,

    /// Fiber content in grams
    required double fiber,

    /// Sugar content in grams
    required double sugars,
  }) = _FoodNutrients;
}
