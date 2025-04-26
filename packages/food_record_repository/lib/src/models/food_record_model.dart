import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/src/models/meal_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_record_model.freezed.dart';

@freezed
sealed class FoodRecord with _$FoodRecord {
  const factory FoodRecord({
    required int id,
    required String name,
    required double grams,
    required double calories,
    required double protein,
    required double carbs,
    required double fat,
    required double saturatedFat,
    required double fiber,
    required double sugars,
    required DateTime date,
    required MealType mealType,
  }) = _FoodRecord;
}

extension FoodRecordEntityExtension on FoodRecordEntity {
  FoodRecord toModel() {
    final factor = grams / 100;

    return FoodRecord(
      id: id,
      name: name,
      grams: grams,
      calories: caloriesPer100g * factor,
      protein: proteinPer100g * factor,
      carbs: carbsPer100g * factor,
      fat: fatPer100g * factor,
      saturatedFat: saturatedFatPer100g * factor,
      fiber: fiberPer100g * factor,
      sugars: sugarsPer100g * factor,
      date: date,
      mealType: MealType.values[mealType],
    );
  }
}
