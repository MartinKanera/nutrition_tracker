import 'package:flutter/material.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';

class FoodRecordForm extends StatefulWidget {
  const FoodRecordForm({
    required this.foodRecord,
    required this.onSubmit,
    required this.date,
    required this.mealType,
    super.key,
  });

  final FoodRecord foodRecord;
  final void Function(FoodRecord record) onSubmit;
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
    _grams = widget.foodRecord.grams;
    _gramsController = TextEditingController(text: '$_grams');
  }

  @override
  Widget build(BuildContext context) {
    final scaledCalories = (widget.foodRecord.caloriesPer100g * _grams) / 100;
    final scaledProtein = (widget.foodRecord.proteinPer100g * _grams) / 100;
    final scaledCarbs = (widget.foodRecord.carbsPer100g * _grams) / 100;
    final scaledFat = (widget.foodRecord.fatPer100g * _grams) / 100;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            widget.foodRecord.name,
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
              Text('${scaledCalories.toStringAsFixed(0)} kcal'),
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
              Text('${scaledProtein.toStringAsFixed(1)} g'),
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
              Text('${scaledCarbs.toStringAsFixed(1)} g'),
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
              Text('${scaledFat.toStringAsFixed(1)} g'),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () {
              final record = FoodRecord(
                id: widget.foodRecord.id,
                name: widget.foodRecord.name,
                calories: scaledCalories,
                protein: scaledProtein,
                carbs: scaledCarbs,
                fat: scaledFat,
                grams: _grams,
                caloriesPer100g: widget.foodRecord.caloriesPer100g,
                proteinPer100g: widget.foodRecord.proteinPer100g,
                carbsPer100g: widget.foodRecord.carbsPer100g,
                fatPer100g: widget.foodRecord.fatPer100g,
                fiberPer100g: widget.foodRecord.fiberPer100g,
                sugarsPer100g: widget.foodRecord.sugarsPer100g,
                saturatedFatPer100g: widget.foodRecord.saturatedFatPer100g,
                fiber: scaledFat,
                sugars: scaledCarbs,
                saturatedFat: scaledFat,
                // Maybe allow changes through the form
                date: widget.date,
                mealType: widget.mealType,
              );
              widget.onSubmit(record);
            },
            child: Text(context.l10n.save),
          )
        ],
      ),
    );
  }
}
