import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';

class FoodRecordForm extends StatefulWidget {
  const FoodRecordForm({
    required this.foodRecordWithNutrients,
    required this.date,
    required this.mealType,
    super.key,
  });
  final FoodRecordWithNutrition foodRecordWithNutrients;
  final DateTime date;
  final MealType mealType;

  @override
  State<FoodRecordForm> createState() => _FoodRecordFormState();
}

class _FoodRecordFormState extends State<FoodRecordForm> {
  late TextEditingController _gramsController;
  late double _grams;

  @override
  void initState() {
    super.initState();
    _grams = widget.foodRecordWithNutrients.record.grams;
    _gramsController = TextEditingController(text: '$_grams');
  }

  @override
  Widget build(BuildContext context) {
    final scale = _grams / widget.foodRecordWithNutrients.nutrients.grams;
    final calories = scale * widget.foodRecordWithNutrients.nutrients.calories;
    final protein = scale * widget.foodRecordWithNutrients.nutrients.protein;
    final carbs = scale * widget.foodRecordWithNutrients.nutrients.carbs;
    final fat = scale * widget.foodRecordWithNutrients.nutrients.fat;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            widget.foodRecordWithNutrients.record.name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextField(
            controller: _gramsController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: context.l10n.grams),
            onChanged: (value) {
              final grams = double.tryParse(value);
              if (grams != null && grams > 0) {
                setState(() {
                  _grams = grams;
                });
              }
            },
          ),
          Row(
            children: [
              Text(
                context.l10n.calories,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                '${calories.toStringAsFixed(1)} g',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                context.l10n.protein,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                '${protein.toStringAsFixed(1)} g',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                context.l10n.carbohydrates,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                '${carbs.toStringAsFixed(1)} g',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                context.l10n.fats,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                '${fat.toStringAsFixed(1)} g',
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () async {
              final record = FoodRecord(
                id: widget.foodRecordWithNutrients.record.id,
                name: widget.foodRecordWithNutrients.record.name,
                grams: _grams,
                date: widget.date,
                mealType: widget.mealType,
              );

              await context
                  .read<FoodRecordRepository>()
                  .updateFoodRecord(record);

              if (context.mounted) {
                context.pop();
              }
            },
            child: Text(context.l10n.save),
          ),
        ],
      ),
    );
  }
}
