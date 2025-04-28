import 'package:food_api_repository/food_api_repository.dart';
import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/src/models/meal_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_record_model.freezed.dart';

@freezed
sealed class FoodRecord with _$FoodRecord {
  const factory FoodRecord({
    required String name,
    required double grams,
    required DateTime date,
    required MealType mealType,
    int? id,
  }) = _FoodRecord;
}

@freezed
sealed class FoodRecordWithNutrition with _$FoodRecordWithNutrition {
  const factory FoodRecordWithNutrition({
    required FoodRecord record,
    required FoodNutrients nutrients,
  }) = _FoodRecordWithNutrition;

  // Scale nutrients based on portion size
  factory FoodRecordWithNutrition.fromNutrients({
    required FoodRecord record,
    required FoodNutrients nutrients,
  }) {
    final scale = record.grams / nutrients.grams;
    final scaledNutrients = FoodNutrients(
      name: nutrients.name,
      grams: record.grams,
      calories: nutrients.calories * scale,
      protein: nutrients.protein * scale,
      carbs: nutrients.carbs * scale,
      fat: nutrients.fat * scale,
      saturatedFat: nutrients.saturatedFat * scale,
      fiber: nutrients.fiber * scale,
      sugars: nutrients.sugars * scale,
    );

    return FoodRecordWithNutrition(
      record: record,
      nutrients: scaledNutrients,
    );
  }
}

extension FoodRecordEntityExtension on FoodRecordEntity {
  FoodRecord toModel() {
    return FoodRecord(
      id: id,
      name: name,
      grams: grams,
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
        date: date,
        mealType: mealType.index,
      );
    }

    return FoodRecordEntity(
      name: name,
      grams: grams,
      date: date,
      mealType: mealType.index,
    );
  }
}
