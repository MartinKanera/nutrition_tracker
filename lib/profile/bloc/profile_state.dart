part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(0.0) double weight,
    @Default(0.0) double height,
    @Default(0) int age,
    @Default(ActivityLevel.light) ActivityLevel activityLevel,
  }) = _ProfileState;
}
