import 'package:food_record_dao/food_record_dao.dart';
import 'package:isar/isar.dart';

class FoodRecordDao {
  FoodRecordDao({
    required Isar isar,
  }) : _isar = isar;

  final Isar _isar;

  Future<List<FoodRecordEntity>> getFoodForDay(DateTime date) async {
    final query = _isar.foodRecords.filter().dateEqualTo(date);

    return query.findAll();
  }
}
