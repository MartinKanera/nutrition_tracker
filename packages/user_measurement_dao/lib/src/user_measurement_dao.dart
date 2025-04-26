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
}
