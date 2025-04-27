// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_food_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchFoodItem _$SearchFoodItemFromJson(Map<String, dynamic> json) =>
    SearchFoodItem(
      foodName: json['food_name'] as String,
      photo:
          SearchFoodItem._thumbFromJson(json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchFoodItemToJson(SearchFoodItem instance) =>
    <String, dynamic>{
      'food_name': instance.foodName,
      'photo': instance.photo,
    };
