import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_food_item.g.dart';

@JsonSerializable()
class SearchFoodItem {
  const SearchFoodItem({required this.foodName, required this.photo});
  factory SearchFoodItem.fromJson(Map<String, dynamic> json) =>
      _$SearchFoodItemFromJson(json);

  @JsonKey(name: 'food_name')
  final String foodName;

  @JsonKey(name: 'photo', fromJson: _thumbFromJson)
  final String photo;

  static String _thumbFromJson(Map<String, dynamic> json) =>
      json['thumb'] as String;
}
