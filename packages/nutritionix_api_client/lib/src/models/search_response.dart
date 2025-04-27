import 'package:json_annotation/json_annotation.dart';
import 'package:nutritionix_api_client/src/models/models.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  const SearchResponse({required this.records});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  @JsonKey(name: 'common')
  final List<SearchFoodItem> records;
}
