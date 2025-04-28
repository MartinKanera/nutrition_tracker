import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_api_repository/food_api_repository.dart';
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
  FoodNutrients? _nutrients;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _grams = widget.foodRecord.grams;
    _gramsController = TextEditingController(text: '$_grams');
    _fetchNutrients();
  }
  
  Future<void> _fetchNutrients() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    
    try {
      final repository = context.read<NutritionixFoodApiRepository>();
      final nutrients = await repository.getFoodNutrients(widget.foodRecord.name);
      setState(() {
        _nutrients = nutrients;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to load nutrition data: ${e.toString()}';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // If we have nutrients, calculate scaled values based on portion size change
    double? scaledCalories;
    double? scaledProtein;
    double? scaledCarbs;
    double? scaledFat;
    
    if (_nutrients != null) {
      final scale = _grams / _nutrients!.grams;
      scaledCalories = _nutrients!.calories * scale;
      scaledProtein = _nutrients!.protein * scale;
      scaledCarbs = _nutrients!.carbs * scale;
      scaledFat = _nutrients!.fat * scale;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.foodRecord.name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
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
          const SizedBox(height: 24),
          
          if (_isLoading)
            const Center(child: CircularProgressIndicator())
          else if (_errorMessage != null)
            Text(_errorMessage!, style: TextStyle(color: Colors.red))
          else if (_nutrients != null) ...[  
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
                Text('${scaledCalories!.toStringAsFixed(0)} kcal'),
              ],
            ),
            const SizedBox(height: 8),
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
                Text('${scaledProtein!.toStringAsFixed(1)} g'),
              ],
            ),
            const SizedBox(height: 8),
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
                Text('${scaledCarbs!.toStringAsFixed(1)} g'),
              ],
            ),
            const SizedBox(height: 8),
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
                Text('${scaledFat!.toStringAsFixed(1)} g'),
              ],
            ),
          ],
          
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: _isLoading || _errorMessage != null ? null : () {
              final record = FoodRecord(
                id: widget.foodRecord.id,
                name: widget.foodRecord.name,
                grams: _grams,
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
