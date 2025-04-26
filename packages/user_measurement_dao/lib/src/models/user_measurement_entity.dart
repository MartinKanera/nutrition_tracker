import 'package:isar/isar.dart';

part 'user_measurement_entity.g.dart';

@Collection(accessor: 'userMeasurements')
class UserMeasurementEntity {
  UserMeasurementEntity({
    required this.id,
    required this.weight,
    required this.height,
    required this.age,
    required this.activityLevelIndex,
    required this.date,
  });

  final Id id;
  final double weight;
  final double height;
  final int age;
  final int activityLevelIndex;
  final DateTime date;
}
