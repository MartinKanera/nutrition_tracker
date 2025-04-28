import 'package:isar/isar.dart';
import 'package:user_measurement_dao/user_measurement_dao.dart';

class UserMeasurementDao {
  UserMeasurementDao({
    required Isar isar,
  }) : _isar = isar;

  final Isar _isar;

  Future<UserMeasurementEntity?> getFirstRecordByDay(DateTime date) {
    return _isar.userMeasurements
        .filter()
        .dateLessThan(date, include: true)
        .sortByDateDesc()
        .findFirst();
  }

  Future<UserMeasurementEntity?> getLatestRecordByDay() {
    return _isar.userMeasurements.where().sortByDateDesc().findFirst();
  }

  Future<void> updateRecord(UserMeasurementEntity entity) async {
    await _isar.writeTxn<void>(() async {
      final existingRecordByDay = await _isar.userMeasurements
          .filter()
          .dateEqualTo(entity.date)
          .findFirst();

      if (existingRecordByDay != null) {
        entity.id = existingRecordByDay.id;
      }

      await _isar.userMeasurements.put(entity);
    });
  }
}
