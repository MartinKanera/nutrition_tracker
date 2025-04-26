import 'package:food_record_repository/src/models/meal_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:food_record_dao/food_record_dao.dart';

part 'food_record_model.freezed.dart';

@freezed
sealed class FoodRecord with _$FoodRecord {
  const factory FoodRecord({
    required int id,
    required String name,
    required double grams,
    required double caloriesPer100g,
    required double proteinPer100g,
    required double carbsPer100g,
    required double fatPer100g,
    required double saturatedFatPer100g,
    required double fiberPer100g,
    required double sugarsPer100g,
    required DateTime date,
    required MealType mealType,
  }) = _FoodRecord;
}

extension FoodRecordEntityExtension on FoodRecordEntity {
  FoodRecord toModel() {
    return FoodRecord(
      id: id,
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
      mealType: MealType.values[mealType],
    );
  }
}

extension FoodRecordExtension on FoodRecord {
  FoodRecordEntity toEntity() {
    return FoodRecordEntity(
      id: id,
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
