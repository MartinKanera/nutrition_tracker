part of 'search_food_bloc.dart';

@freezed
class SearchFoodEvent with _$SearchFoodEvent {
  const factory SearchFoodEvent.queryUpdated({
    required String query,
  }) = _QueryUpdated;
}
