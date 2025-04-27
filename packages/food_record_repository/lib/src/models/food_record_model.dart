import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/src/models/meal_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutritionix_api_client/src/models/models.dart';

part 'food_record_model.freezed.dart';

@freezed
sealed class FoodRecord with _$FoodRecord {
  const factory FoodRecord({
    required String name,
    required double grams,
    required double calories,
    required double caloriesPer100g,
    required double protein,
    required double proteinPer100g,
    required double carbs,
    required double carbsPer100g,
    required double fat,
    required double fatPer100g,
    required double saturatedFat,
    required double saturatedFatPer100g,
    required double fiber,
    required double fiberPer100g,
    required double sugars,
    required double sugarsPer100g,
    required DateTime date,
    required MealType mealType,
    int? id,
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
      caloriesPer100g: caloriesPer100g,
      protein: proteinPer100g * factor,
      proteinPer100g: proteinPer100g,
      carbs: carbsPer100g * factor,
      carbsPer100g: carbsPer100g,
      fat: fatPer100g * factor,
      fatPer100g: fatPer100g,
      saturatedFat: saturatedFatPer100g * factor,
      saturatedFatPer100g: saturatedFatPer100g,
      fiber: fiberPer100g * factor,
      fiberPer100g: fiberPer100g,
      sugars: sugarsPer100g * factor,
      sugarsPer100g: sugarsPer100g,
      date: date,
      mealType: MealType.values[mealType],
    );
  }
}

extension FoodRecordModelExtension on FoodRecord {
  FoodRecordEntity toEntity() {
    if (id != null) {
      return FoodRecordEntity(
        id: id!,
        name: name,
        grams: grams,
        caloriesPer100g: caloriesPer100g,
        proteinPer100g: proteinPer100g,
        carbsPer100g: carbsPer100g,
        fatPer100g: fatPer100g,
        saturatedFatPer100g: saturatedFatPer100g,
        fiberPer100g: fiberPer100g,
        sugarsPer100g: sugarsPer100g,
        date: date,
        mealType: mealType.index,
      );
    }

    return FoodRecordEntity(
      name: name,
      grams: grams,
      caloriesPer100g: caloriesPer100g,
      proteinPer100g: proteinPer100g,
      carbsPer100g: carbsPer100g,
      fatPer100g: fatPer100g,
      saturatedFatPer100g: saturatedFatPer100g,
      fiberPer100g: fiberPer100g,
      sugarsPer100g: sugarsPer100g,
      date: date,
      mealType: mealType.index,
    );
  }
}

extension SearchFoodItemExtension on FoodItem {
  FoodRecord toModel() {
    return FoodRecord(
      name: foodName,
      grams: grams,
      calories: calories,
      caloriesPer100g: calories / 100,
      protein: protein,
      proteinPer100g: protein / 100,
      carbs: carbs,
      carbsPer100g: carbs / 100,
      fat: fat,
      fatPer100g: fat / 100,
      saturatedFat: saturatedFat,
      saturatedFatPer100g: saturatedFat / 100,
      fiber: fiber,
      fiberPer100g: fiber / 100,
      sugars: sugars,
      sugarsPer100g: sugars / 100,
      date: DateTime.now(),
      mealType: MealType.breakfast,
    );
  }
}
