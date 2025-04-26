import 'package:isar/isar.dart';

part 'food_record_entity.g.dart';

@Collection(accessor: 'foodRecords')
class FoodRecordEntity {
  FoodRecordEntity({
    required this.id,
    required this.name,
    required this.grams,
    required this.caloriesPer100g,
    required this.proteinPer100g,
    required this.carbsPer100g,
    required this.fatPer100g,
    required this.saturatedFatPer100g,
    required this.fiberPer100g,
    required this.sugarsPer100g,
    required this.date,
    required this.mealType,
  });

  final Id id;
  final String name;
  final double grams;
  final double caloriesPer100g;
  final double proteinPer100g;
  final double carbsPer100g;
  final double fatPer100g;
  final double saturatedFatPer100g;
  final double fiberPer100g;
  final double sugarsPer100g;
  final DateTime date;
  final int mealType;
}
