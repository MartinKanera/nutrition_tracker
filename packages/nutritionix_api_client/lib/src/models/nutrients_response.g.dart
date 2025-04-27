// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrients_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutrientsResponse _$NutrientsResponseFromJson(Map<String, dynamic> json) =>
    NutrientsResponse(
      foods: (json['foods'] as List<dynamic>)
          .map((e) => FoodItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NutrientsResponseToJson(NutrientsResponse instance) =>
    <String, dynamic>{
      'foods': instance.foods,
    };
