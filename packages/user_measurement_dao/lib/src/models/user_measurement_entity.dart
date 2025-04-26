import 'package:isar/isar.dart';

part 'user_measurement_entity.g.dart';

@Collection(accessor: 'userMeasurements')
class UserMeasurementEntity {
  UserMeasurementEntity(
      {required this.id, required this.weight, required this.date});

  final Id id;
  final double weight;
  final DateTime date;
}
