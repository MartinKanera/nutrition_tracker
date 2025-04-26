import 'package:user_measurement_dao/user_measurement_dao.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

class UserMeasurementRepository {
  UserMeasurementRepository({required UserMeasurementDao dao}) : _dao = dao;

  final UserMeasurementDao _dao;

  Future<double?> getWeightForDay(DateTime date) async {
    final record = await _dao.getFirstRecordByDay(date);
    return record?.toModel().weight;
  }
}
