import 'package:food_record_dao/food_record_dao.dart';
import 'package:food_record_repository/src/models/food_record_model.dart';
import 'package:nutritionix_api_client/nutritionix_api_client.dart';

class FoodRecordRepository {
  FoodRecordRepository({
    required FoodRecordDao dao,
  })  : _dao = dao,
        _nutritionixApiClient = NutritionixApiClient();

  final FoodRecordDao _dao;
  final NutritionixApiClient _nutritionixApiClient;

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

  Future<List<SearchFoodItem>> searchFoodItems(String query) async {
    return _nutritionixApiClient.searchFoodItems(query);
  }

  Future<FoodRecord> getNutrients(String name) async {
    return (await _nutritionixApiClient.getFoodItem(name)).toModel();
  }
}
