import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_api_repository/food_api_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_food_bloc.freezed.dart';
part 'search_food_event.dart';
part 'search_food_state.dart';

EventTransformer<Event> debounce<Event>(
  Duration duration,
) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class SearchFoodBloc extends Bloc<SearchFoodEvent, SearchFoodState> {
  SearchFoodBloc({
    required this.nutritionixFoodApiRepository,
  }) : super(const SearchFoodState.success()) {
    on<_QueryUpdated>(
      _onQueryUpdated,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
  }

  final NutritionixFoodApiRepository nutritionixFoodApiRepository;

  Future<void> _onQueryUpdated(
    _QueryUpdated event,
    Emitter<SearchFoodState> emit,
  ) async {
    final result = await nutritionixFoodApiRepository.searchFoods(
      event.query,
    );

    emit(
      SearchFoodState.success(
        query: event.query,
        searchResults: result,
      ),
    );
  }
}
