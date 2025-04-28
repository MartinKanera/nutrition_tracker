part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getLatestMeasurement() = _GetLatestMeasurement;
  const factory ProfileEvent.updateMeasurement(UserMeasurement measurement) =
      _UpdateMeasurement;
}
