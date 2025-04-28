import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrition_tracker/profile/bloc/profile_bloc.dart';
import 'package:nutrition_tracker/profile/view/profile_view.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        userMeasurementRepository: context.read<UserMeasurementRepository>(),
      )..add(const ProfileEvent.getLatestMeasurement()),
      child: const ProfileView(),
    );
  }
}
