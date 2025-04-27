import 'package:json_annotation/json_annotation.dart';
import 'package:nutritionix_api_client/src/models/models.dart';

part 'nutrients_response.g.dart';

@JsonSerializable()
class NutrientsResponse {
  const NutrientsResponse({required this.foods});
  factory NutrientsResponse.fromJson(Map<String, dynamic> json) =>
      _$NutrientsResponseFromJson(json);

  @JsonKey(name: 'foods')
  final List<FoodItem> foods;
}
