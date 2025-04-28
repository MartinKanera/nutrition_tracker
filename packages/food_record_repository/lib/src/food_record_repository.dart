import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/src/models/food_record_model.dart';

class FoodRecordRepository {
  FoodRecordRepository({
    required FoodRecordDao dao,
  }) : _dao = dao;

  final FoodRecordDao _dao;

  Future<void> addFood(FoodRecord record) {
    throw UnimplementedError();
  }

  Stream<List<FoodRecord>> watchFoodForDay(DateTime date) {
    return _dao
        .getFoodForDay(date)
        .map((records) => records.map((record) => record.toModel()).toList());
  }

  Future<void> updateFoodRecord(FoodRecord record) async {
    await _dao.updateFoodRecord(record.toEntity());
  }

  Future<void> deleteFoodRecord(FoodRecord record) async {
    await _dao.deleteFoodRecordById(record.id!);
  }
}
