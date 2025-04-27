import 'package:flutter/cupertino.dart';
import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:isar/isar.dart';
import 'package:nutrition_tracker/app/app.dart';
import 'package:nutrition_tracker/bootstrap.dart';
import 'package:nutrition_tracker/seeder/mock_seeder.dart';
import 'package:nutritionix_api_client/nutritionix_api_client.dart';
import 'package:path_provider/path_provider.dart';
import 'package:user_measurement_dao/user_measurement_dao.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [FoodRecordEntitySchema, UserMeasurementEntitySchema],
      directory: dir.path,
    );

    // Init Data Access Objects
    final foodRecordDao = FoodRecordDao(isar: isar);
    final userMeasurementDao = UserMeasurementDao(isar: isar);

    // Init Repositories
    final foodRecordRepository = FoodRecordRepository(dao: foodRecordDao);
    final userMeasurementRepository =
        UserMeasurementRepository(dao: userMeasurementDao);

    // Api
    final nutritionixApiClient = NutritionixApiClient();

    nutritionixApiClient.getFoodItem('apple').then((value) {
      print(value);
    });

    await MockSeeder(isar: isar).seed();

    return App(
      foodRecordRepository: foodRecordRepository,
      userMeasurementRepository: userMeasurementRepository,
    );
  });
}
