import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/src/models/food_record_model.dart';

class FoodRecordRepository {
  FoodRecordRepository({required FoodRecordDao dao}) : _dao = dao;

  final FoodRecordDao _dao;

  Future<void> addFood(FoodRecord record) {
    throw UnimplementedError();
  }

  Future<void> removeFood(String id) {
    throw UnimplementedError();
  }

  Future<List<FoodRecord>> getFoodForDay(DateTime date) async {
    final records = await _dao.getFoodForDay(date);

    return records.map((model) => model.toModel()).toList();
  }
}
