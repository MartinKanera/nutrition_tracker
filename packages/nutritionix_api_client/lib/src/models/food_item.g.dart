// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodItem _$FoodItemFromJson(Map<String, dynamic> json) => FoodItem(
      foodName: json['food_name'] as String,
      calories: (json['nf_calories'] as num).toDouble(),
      grams: (json['serving_weight_grams'] as num).toDouble(),
      protein: (json['nf_protein'] as num).toDouble(),
      carbs: (json['nf_total_carbohydrate'] as num).toDouble(),
      fat: (json['nf_total_fat'] as num).toDouble(),
      saturatedFat: (json['nf_saturated_fat'] as num?)?.toDouble() ?? 0.0,
      fiber: (json['nf_dietary_fiber'] as num?)?.toDouble() ?? 0.0,
      sugars: (json['nf_sugars'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$FoodItemToJson(FoodItem instance) => <String, dynamic>{
      'food_name': instance.foodName,
      'serving_weight_grams': instance.grams,
      'nf_calories': instance.calories,
      'nf_protein': instance.protein,
      'nf_total_carbohydrate': instance.carbs,
      'nf_sugars': instance.sugars,
      'nf_total_fat': instance.fat,
      'nf_saturated_fat': instance.saturatedFat,
      'nf_dietary_fiber': instance.fiber,
    };
