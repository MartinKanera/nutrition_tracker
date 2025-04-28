import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nutritionix_api_client/src/models/models.dart';

const nutritionixApi = 'https://trackapi.nutritionix.com/v2';
const searchUrl = '$nutritionixApi/search/instant';
const nutrientsUrl = '$nutritionixApi/natural/nutrients';

class NutritionixApiClient {
  NutritionixApiClient() : _client = http.Client();

  final http.Client _client;

  // In-memory cache for food items by name
  final Map<String, FoodItem> _foodItemCache = {};

  Future<List<SearchFoodItem>> searchFoodItems(String query) async {
    if (query.isEmpty) {
      return [];
    }

    final response = await _client.get(
      Uri.parse(searchUrl).replace(queryParameters: {'query': query}),
      headers: {
        'x-app-id': const String.fromEnvironment('X_APP_ID'),
        'x-app-key': const String.fromEnvironment('X_APP_KEY'),
      },
    );

    if (response.statusCode == 404) {
      return [];
    }

    if (response.statusCode != 200) {
      throw Exception('Failed to load food items');
    }

    final searchResponse = SearchResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
    return searchResponse.records;
  }

  Future<FoodItem> getFoodItem(String name) async {
    // Check cache first
    if (_foodItemCache.containsKey(name)) {
      return _foodItemCache[name]!;
    }

    // Not in cache, fetch from API
    final response = await _client.post(
      Uri.parse(nutrientsUrl),
      headers: {
        'Content-Type': 'application/json',
        'x-app-id': const String.fromEnvironment('X_APP_ID'),
        'x-app-key': const String.fromEnvironment('X_APP_KEY'),
      },
      body: jsonEncode({'query': name}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load food item');
    }

    final nutrientsResponse = NutrientsResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
    
    if (nutrientsResponse.foods.isEmpty) {
      throw Exception('No food item found for "$name"');
    }
    
    final foodItem = nutrientsResponse.foods.first;

    // Store in cache before returning
    _foodItemCache[name] = foodItem;
    return foodItem;
  }
}
