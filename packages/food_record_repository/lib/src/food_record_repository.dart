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

    // return Future.delayed(
    //     const Duration(seconds: 1),
    //     () => [
    //           FoodRecord(
    //             id: '1',
    //             name: 'Rice',
    //             grams: 100,
    //             caloriesPer100g: 100,
    //             proteinPer100g: 10,
    //             carbsPer100g: 10,
    //             fatPer100g: 10,
    //             date: date,
    //           ),
    //           FoodRecord(
    //             id: '2',
    //             name: 'Beef Minced',
    //             grams: 200,
    //             caloriesPer100g: 252,
    //             proteinPer100g: 20,
    //             carbsPer100g: 5,
    //             fatPer100g: 10,
    //             date: date,
    //           ),
    //         ]);
  }
}
