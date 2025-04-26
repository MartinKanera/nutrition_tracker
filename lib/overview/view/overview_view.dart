import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_tracker/overview/overview.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OverviewBloc, OverviewState>(
      listener: (context, state) {
        if (state case FailureState(:final issue)) {
          if (issue == OverviewIssue.missingUserMeasurement) {
            context.go('/profile');
          }
        }
      },
      child: BlocBuilder<OverviewBloc, OverviewState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              spacing: 16,
              children: [
                DatePicker(currentDate: state.date),
                if (state is LoadingState)
                  const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                else if (state is SuccessState)
                  DailyProgress(statistics: state.statistics),
              ],
            ),
          );
        },
      ),
    );
  }
}
