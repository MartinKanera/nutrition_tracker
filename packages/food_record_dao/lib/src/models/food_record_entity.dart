import 'package:isar/isar.dart';

part 'food_record_entity.g.dart';

@Collection(accessor: 'foodRecords')
class FoodRecordEntity {
  FoodRecordEntity({
    required this.name,
    required this.grams,
    required this.date,
    required this.mealType,
    this.id = Isar.autoIncrement,
  });

  final Id id;
  final String name;
  final double grams;
  final DateTime date;
  final int mealType;
}
