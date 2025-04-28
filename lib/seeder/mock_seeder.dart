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
          height: 184,
          age: 23,
          activityLevelIndex: 2,
          date: now.subtract(const Duration(days: 2)),
        ),
        UserMeasurementEntity(
          id: 2,
          weight: 82.8,
          height: 184,
          age: 23,
          activityLevelIndex: 2,
          date: now.subtract(const Duration(days: 1)),
        ),
        UserMeasurementEntity(
          id: 3,
          weight: 82.5,
          height: 184,
          age: 23,
          activityLevelIndex: 2,
          date: now,
        ),
      ]);

      await _isar.foodRecords.putAll([
        FoodRecordEntity(
          id: 1,
          name: 'Oatmeal',
          grams: 250,
          date: now.subtract(const Duration(days: 2)),
          mealType: MealType.breakfast.index,
        ),
        FoodRecordEntity(
          id: 2,
          name: 'Chicken Salad',
          grams: 300,
          date: now.subtract(const Duration(days: 2)),
          mealType: MealType.lunch.index,
        ),
        FoodRecordEntity(
          id: 3,
          name: 'Greek Yogurt',
          grams: 150,
          date: now.subtract(const Duration(days: 1)),
          mealType: MealType.breakfast.index,
        ),
        FoodRecordEntity(
          id: 4,
          name: 'Steak',
          grams: 200,
          date: now.subtract(const Duration(days: 1)),
          mealType: MealType.dinner.index,
        ),
        FoodRecordEntity(
          id: 5,
          name: 'Scrambled Eggs',
          grams: 180,
          date: now,
          mealType: MealType.breakfast.index,
        ),
        FoodRecordEntity(
          id: 8,
          name: 'Oatmeal',
          grams: 250,
          date: now,
          mealType: MealType.breakfast.index,
        ),
        FoodRecordEntity(
          id: 6,
          name: 'Pasta Bolognese',
          grams: 350,
          date: now,
          mealType: MealType.lunch.index,
        ),
        FoodRecordEntity(
          id: 7,
          name: 'Protein Bar',
          grams: 60,
          date: now,
          mealType: MealType.afternoonSnack.index,
        ),
      ]);
    });
  }
}
