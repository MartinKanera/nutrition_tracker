import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_api_repository/food_api_repository.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';
import 'package:nutrition_tracker/overview/widgets/widgets.dart';
import 'package:nutrition_tracker/search_food/bloc/search_food_bloc.dart'
    show SearchFoodBloc, SearchFoodEvent, SearchFoodState;

class SearchFoodView extends StatelessWidget {
  const SearchFoodView({required this.mealType, required this.date, super.key});

  final MealType mealType;
  final DateTime date;

  FutureBuilder<FoodNutrients> _createRecordModal(
      BuildContext context, FoodSearchResult clickedResult) {
    return FutureBuilder(
        future: context
            .read<NutritionixFoodApiRepository>()
            .getFoodNutrients(clickedResult.name),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final nutrients = snapshot.data!;

          return FoodRecordForm(
            foodRecordWithNutrients: FoodRecordWithNutrition(
              record: FoodRecord(
                name: clickedResult.name,
                grams: 100,
                date: date,
                mealType: mealType,
              ),
              nutrients: nutrients,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<SearchFoodBloc, SearchFoodState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search header
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  context.l10n.searchFood,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Search bar with styling
              SearchBar(
                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 16),
                ),
                autoFocus: true,
                hintText: context.l10n.searchFoodHint,
                leading: const Icon(Icons.search),
                onChanged: (query) {
                  context.read<SearchFoodBloc>().add(
                        SearchFoodEvent.queryUpdated(query: query),
                      );
                },
              ),

              const SizedBox(height: 16),

              // Results section
              state.maybeMap(
                success: (successState) {
                  // Empty state
                  if (successState.searchResults.isEmpty &&
                      successState.query.isNotEmpty) {
                    return Expanded(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.search_off,
                              size: 64,
                              color: theme.colorScheme.outline,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              context.l10n.noResults,
                              style: theme.textTheme.titleLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              context.l10n.tryAgain,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.outline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  // Initial state or empty query
                  if (successState.searchResults.isEmpty) {
                    return Expanded(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.food_bank,
                              size: 64,
                              color: theme.colorScheme.primary.withOpacity(0.7),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              context.l10n.searchFoodItems,
                              style: theme.textTheme.titleLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              context.l10n.searchHelp,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.outline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  // Results list
                  return Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            '${context.l10n.resultsFor} "${successState.query}"',
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: successState.searchResults.length,
                            itemBuilder: (context, index) {
                              final result = successState.searchResults[index];
                              return Card(
                                elevation: 1,
                                margin: const EdgeInsets.only(bottom: 8),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(12),
                                  onTap: () {
                                    showModalBottomSheet<Widget>(
                                      context: context,
                                      builder: (context) =>
                                          _createRecordModal(context, result),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        // Image with error handling
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: SizedBox(
                                            width: 70,
                                            height: 70,
                                            child: result.imageUrl.isNotEmpty
                                                ? Image.network(
                                                    result.imageUrl,
                                                    fit: BoxFit.cover,
                                                    errorBuilder: (context,
                                                            error,
                                                            stackTrace) =>
                                                        ColoredBox(
                                                      color: theme.colorScheme
                                                          .surfaceContainerHighest,
                                                      child: Icon(
                                                        Icons.fastfood,
                                                        color: theme.colorScheme
                                                            .primary,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  )
                                                : ColoredBox(
                                                    color: theme.colorScheme
                                                        .surfaceContainerHighest,
                                                    child: Icon(
                                                      Icons.fastfood,
                                                      color: theme
                                                          .colorScheme.primary,
                                                      size: 30,
                                                    ),
                                                  ),
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        // Food details
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                result.name,
                                                style: theme
                                                    .textTheme.titleMedium
                                                    ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                context.l10n
                                                    .tapToSelectThisFoodItem,
                                                style: theme.textTheme.bodySmall
                                                    ?.copyWith(
                                                  color:
                                                      theme.colorScheme.outline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          Icons.add_circle,
                                          color: theme.colorScheme.primary,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
                orElse: () => const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
