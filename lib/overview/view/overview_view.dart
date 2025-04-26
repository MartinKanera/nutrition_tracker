import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrition_tracker/overview/overview.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewBloc, OverviewState>(
      buildWhen: (previous, current) => previous.date != current.date,
      builder: (context, state) {
        return Column(
          children: [
            DatePicker(currentDate: state.date),
          ],
        );
      },
    );
  }
}
