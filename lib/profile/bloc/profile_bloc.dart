import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.userMeasurementRepository})
      : super(const ProfileState()) {
    on<_GetLatestMeasurement>(_onGetLatestMeasurement);
    on<_UpdateMeasurement>(_onUpdateMeasurement);
  }

  final UserMeasurementRepository userMeasurementRepository;

  Future<void> _onGetLatestMeasurement(
    _GetLatestMeasurement event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState());

    final measurement = await userMeasurementRepository.getLatestMeasurement();

    emit(
      ProfileState(
        weight: measurement?.weight ?? 0.0,
        height: measurement?.height ?? 0.0,
        age: measurement?.age ?? 0,
        activityLevel: measurement?.activityLevel ?? ActivityLevel.light,
      ),
    );
  }

  Future<void> _onUpdateMeasurement(
    _UpdateMeasurement event,
    Emitter<ProfileState> emit,
  ) async {
    await userMeasurementRepository.updateMeasurement(event.measurement);
    emit(ProfileState(
      weight: event.measurement.weight,
      height: event.measurement.height,
      age: event.measurement.age,
      activityLevel: event.measurement.activityLevel,
    ));
  }
}
