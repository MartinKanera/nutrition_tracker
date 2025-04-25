import 'package:flutter/cupertino.dart';
import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:isar/isar.dart';
import 'package:nutrition_tracker/app/app.dart';
import 'package:nutrition_tracker/bootstrap.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([FoodRecordEntitySchema], directory: dir.path);
    final foodRecordDao = FoodRecordDao(isar: isar);
    final foodRecordRepository = FoodRecordRepository(dao: foodRecordDao);

    return App(
      foodRecordRepository: foodRecordRepository,
    );
  });
}
