import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrition_tracker/extensions/date_time_extensions.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';
import 'package:nutrition_tracker/overview/overview.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({required DateTime currentDate, super.key})
      : _currentDate = currentDate;

  final DateTime _currentDate;

  @override
  Widget build(BuildContext context) {
    final parsedDate = _currentDate.formattedDate.split(' ');

    return GestureDetector(
      onTap: () async {
        final bloc = context.read<OverviewBloc>();
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: bloc.state.date,
          firstDate: DateTime(2020),
          lastDate: DateTime(2030),
        );

        if (selectedDate != null) {
          bloc.add(OverviewEvent.dayChanged(selectedDate));
        }
      },
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (_currentDate.isToday)
            Text(
              context.l10n.today,
              style: Theme.of(context).textTheme.displayLarge,
            )
          else
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: parsedDate[0],
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const WidgetSpan(
                    child: SizedBox(width: 8),
                  ),
                  TextSpan(
                    text: parsedDate[1],
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 32,
          ),
        ],
      ),
    );
  }
}
