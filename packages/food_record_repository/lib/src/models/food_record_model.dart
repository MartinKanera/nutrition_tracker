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
    required DateTime date,
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
      date: date,
    );
  }
}

extension FoodRecordX on FoodRecord {
  FoodRecordEntity toEntity() {
    return FoodRecordEntity(
      id: id,
      name: name,
      grams: grams,
      caloriesPer100g: caloriesPer100g,
      proteinPer100g: proteinPer100g,
      carbsPer100g: carbsPer100g,
      fatPer100g: fatPer100g,
      date: date,
    );
  }
}
