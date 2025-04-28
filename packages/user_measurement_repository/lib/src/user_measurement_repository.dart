import 'package:user_measurement_dao/user_measurement_dao.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

class UserMeasurementRepository {
  UserMeasurementRepository({required UserMeasurementDao dao}) : _dao = dao;

  final UserMeasurementDao _dao;

  Future<UserMeasurement?> getMeasurementForDay(DateTime date) async {
    var record = await _dao.getFirstRecordByDay(date);
    // Try to get the latest record if no record was found for the day
    // especially useful for going into past
    record ??= await _dao.getLatestRecordByDay();

    return record?.toModel();
  }

  Future<UserMeasurement?> getLatestMeasurement() async {
    final record = await _dao.getLatestRecordByDay();
    return record?.toModel();
  }

  Future<void> updateMeasurement(UserMeasurement measurement) async {
    await _dao.updateRecord(measurement.toEntity());
  }
}
