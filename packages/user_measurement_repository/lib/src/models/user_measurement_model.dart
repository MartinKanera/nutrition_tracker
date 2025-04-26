import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_measurement_dao/user_measurement_dao.dart';

part 'user_measurement_model.freezed.dart';

@freezed
sealed class UserMeasurement with _$UserMeasurement {
  const factory UserMeasurement({
    required int id,
    required double weight,
    required DateTime date,
  }) = _UserMeasurement;
}

extension UserMeasurementEntityExtension on UserMeasurementEntity {
  UserMeasurement toModel() {
    return UserMeasurement(
      id: id,
      weight: weight,
      date: date,
    );
  }
}

extension UserMeasurementExtension on UserMeasurement {
  UserMeasurementEntity toEntity() {
    return UserMeasurementEntity(
      id: id,
      weight: weight,
      date: date,
    );
  }
}
