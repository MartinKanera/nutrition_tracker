import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_measurement_dao/user_measurement_dao.dart';
import 'package:user_measurement_repository/src/models/activity_level.dart';

part 'user_measurement_model.freezed.dart';

@freezed
sealed class UserMeasurement with _$UserMeasurement {
  const factory UserMeasurement({
    required int id,
    required double weight,
    required double height,
    required int age,
    required ActivityLevel activityLevel,
    required DateTime date,
  }) = _UserMeasurement;
}

extension UserMeasurementEntityExtension on UserMeasurementEntity {
  UserMeasurement toModel() {
    return UserMeasurement(
      id: id,
      weight: weight,
      height: height,
      age: age,
      activityLevel: ActivityLevel.values[activityLevelIndex],
      date: date,
    );
  }
}
