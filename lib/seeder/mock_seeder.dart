import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:isar/isar.dart';
import 'package:nutrition_tracker/extensions/date_time_extensions.dart';
import 'package:user_measurement_dao/user_measurement_dao.dart';

class MockSeeder {
  MockSeeder({required Isar isar}) : _isar = isar;

  final Isar _isar;

  Future<void> seed() async {
    await _isar.writeTxn(() async {
      await _isar.clear();

      final now = DateTimeExtensions.todayStripped();

      await _isar.userMeasurements.putAll([
        UserMeasurementEntity(
          id: 1,
          weight: 83.5,
          date: now.subtract(const Duration(days: 2)),
        ),
        UserMeasurementEntity(
          id: 2,
          weight: 82.8,
          date: now.subtract(const Duration(days: 1)),
        ),
        UserMeasurementEntity(
          id: 3,
          weight: 82.5,
          date: now,
        ),
      ]);

      await _isar.foodRecords.putAll([
        // 2 dny zpátky
        FoodRecordEntity(
          id: 1,
          name: 'Oatmeal',
          grams: 250,
          caloriesPer100g: 68,
          proteinPer100g: 2.4,
          carbsPer100g: 12.0,
          fatPer100g: 1.4,
          date: now.subtract(const Duration(days: 2)),
          mealType: MealType.breakfast.index,
        ),
        FoodRecordEntity(
          id: 2,
          name: 'Chicken Salad',
          grams: 300,
          caloriesPer100g: 120,
          proteinPer100g: 20,
          carbsPer100g: 4,
          fatPer100g: 6,
          date: now.subtract(const Duration(days: 2)),
          mealType: MealType.lunch.index,
        ),

        // 1 den zpátky
        FoodRecordEntity(
          id: 3,
          name: 'Greek Yogurt',
          grams: 150,
          caloriesPer100g: 59,
          proteinPer100g: 10,
          carbsPer100g: 3.6,
          fatPer100g: 0.4,
          date: now.subtract(const Duration(days: 1)),
          mealType: MealType.breakfast.index,
        ),
        FoodRecordEntity(
          id: 4,
          name: 'Steak',
          grams: 200,
          caloriesPer100g: 250,
          proteinPer100g: 26,
          carbsPer100g: 0,
          fatPer100g: 17,
          date: now.subtract(const Duration(days: 1)),
          mealType: MealType.dinner.index,
        ),

        // dnešek
        FoodRecordEntity(
          id: 5,
          name: 'Scrambled Eggs',
          grams: 180,
          caloriesPer100g: 150,
          proteinPer100g: 12,
          carbsPer100g: 1.5,
          fatPer100g: 11,
          date: now,
          mealType: MealType.breakfast.index,
        ),
        FoodRecordEntity(
          id: 6,
          name: 'Pasta Bolognese',
          grams: 350,
          caloriesPer100g: 130,
          proteinPer100g: 8,
          carbsPer100g: 18,
          fatPer100g: 4.5,
          date: now,
          mealType: MealType.lunch.index,
        ),
        FoodRecordEntity(
          id: 7,
          name: 'Protein Bar',
          grams: 60,
          caloriesPer100g: 360,
          proteinPer100g: 30,
          carbsPer100g: 25,
          fatPer100g: 10,
          date: now,
          mealType: MealType.afternoonSnack.index,
        ),
      ]);
    });
  }
}
