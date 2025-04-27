import 'package:json_annotation/json_annotation.dart';

part 'food_item.g.dart';

@JsonSerializable()
class FoodItem {
  const FoodItem({
    required this.foodName,
    required this.calories,
    required this.grams,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.saturatedFat,
    required this.fiber,
    required this.sugars,
  });
  factory FoodItem.fromJson(Map<String, dynamic> json) =>
      _$FoodItemFromJson(json);

  @JsonKey(name: 'food_name')
  final String foodName;

  @JsonKey(name: 'serving_weight_grams')
  final double grams;

  @JsonKey(name: 'nf_calories')
  final double calories;

  @JsonKey(name: 'nf_protein')
  final double protein;

  @JsonKey(name: 'nf_total_carbohydrate')
  final double carbs;

  @JsonKey(name: 'nf_sugars', defaultValue: 0.0)
  final double sugars;

  @JsonKey(name: 'nf_total_fat')
  final double fat;

  @JsonKey(name: 'nf_saturated_fat', defaultValue: 0.0)
  final double saturatedFat;

  @JsonKey(name: 'nf_dietary_fiber', defaultValue: 0.0)
  final double fiber;
}
