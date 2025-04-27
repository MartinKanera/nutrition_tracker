import 'package:food_record_dao/food_record_dao.dart';
import 'package:isar/isar.dart';

class FoodRecordDao {
  FoodRecordDao({
    required Isar isar,
  }) : _isar = isar;

  final Isar _isar;

  Stream<List<FoodRecordEntity>> getFoodForDay(DateTime date) {
    return _isar.foodRecords
        .filter()
        .dateEqualTo(date)
        .watch(fireImmediately: true);
  }

  Future<void> updateFoodRecord(FoodRecordEntity record) async {
    await _isar.writeTxn(() async {
      await _isar.foodRecords.put(record);
    });
  }

  Future<void> deleteFoodRecordById(Id id) async {
    await _isar.writeTxn(() async {
      await _isar.foodRecords.delete(id);
    });
  }
}
