import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrition_tracker/extensions/date_time_extensions.dart';
import 'package:nutrition_tracker/profile/bloc/profile_bloc.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late final TextEditingController _weightController;
  late final TextEditingController _heightController;
  late final TextEditingController _ageController;
  late ActivityLevel _activityLevel;

  @override
  void initState() {
    super.initState();
    final state = context.read<ProfileBloc>().state;
    _weightController =
        TextEditingController(text: state.weight.toStringAsFixed(1));
    _heightController =
        TextEditingController(text: state.height.toStringAsFixed(1));
    _ageController = TextEditingController(text: state.age.toStringAsFixed(1));
    _activityLevel = state.activityLevel;
  }

  @override
  void dispose() {
    _weightController.dispose();
    _heightController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        setState(() {
          _weightController.text = state.weight % 1 == 0
              ? state.weight.toInt().toString()
              : state.weight.toStringAsFixed(1);
          _heightController.text = state.height % 1 == 0
              ? state.height.toInt().toString()
              : state.height.toStringAsFixed(1);
          _ageController.text = state.age.toString();
          _activityLevel = state.activityLevel;
        });
      },
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Text(
                            'Tell us about yourself',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextField(
                            controller: _weightController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: context.l10n.weight,
                              suffix: const Text('kg'),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          TextField(
                            controller: _heightController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: context.l10n.height,
                              suffix: const Text('cm'),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          TextField(
                            controller: _ageController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: context.l10n.age,
                              suffix: Text(context.l10n.years),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          RadioListTile(
                            title: Text(context.l10n.light),
                            value: ActivityLevel.light,
                            groupValue: _activityLevel,
                            onChanged: (value) {
                              setState(() {
                                _activityLevel = value!;
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text(context.l10n.moderate),
                            value: ActivityLevel.moderate,
                            groupValue: _activityLevel,
                            onChanged: (value) {
                              setState(() {
                                _activityLevel = value!;
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text(context.l10n.active),
                            value: ActivityLevel.active,
                            groupValue: _activityLevel,
                            onChanged: (value) {
                              setState(() {
                                _activityLevel = value!;
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text(context.l10n.veryActive),
                            value: ActivityLevel.veryActive,
                            groupValue: _activityLevel,
                            onChanged: (value) {
                              setState(() {
                                _activityLevel = value!;
                              });
                            },
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            onPressed: () async {
                              context.read<ProfileBloc>().add(
                                    ProfileEvent.updateMeasurement(
                                      UserMeasurement(
                                        weight: double.parse(
                                            _weightController.text),
                                        height: double.parse(
                                            _heightController.text),
                                        age: int.parse(_ageController.text),
                                        activityLevel: _activityLevel,
                                        date:
                                            DateTimeExtensions.todayStripped(),
                                      ),
                                    ),
                                  );
                            },
                            child: Text(context.l10n.save),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
