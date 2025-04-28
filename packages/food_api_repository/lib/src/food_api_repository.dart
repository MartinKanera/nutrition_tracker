import 'package:food_api_repository/src/models/models.dart';
import 'package:nutritionix_api_client/nutritionix_api_client.dart';

class NutritionixFoodApiRepository {
  NutritionixFoodApiRepository() : _client = NutritionixApiClient();

  final NutritionixApiClient _client;

  Future<List<FoodSearchResult>> searchFoods(String query) async {
    final searchItems = await _client.searchFoodItems(query);
    return searchItems
        .map(
          (item) => FoodSearchResult(
            name: item.foodName,
            imageUrl: item.photo,
          ),
        )
        .toList();
  }

  Future<FoodNutrients> getFoodNutrients(String name) async {
    final foodItem = await _client.getFoodItem(name);
    return FoodNutrients(
      name: foodItem.foodName,
      grams: foodItem.grams,
      calories: foodItem.calories,
      protein: foodItem.protein,
      carbs: foodItem.carbs,
      fat: foodItem.fat,
      saturatedFat: foodItem.saturatedFat,
      fiber: foodItem.fiber,
      sugars: foodItem.sugars,
    );
  }
}
