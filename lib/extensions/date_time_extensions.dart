import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  /// Returns a [DateTime] with the time stripped
  static DateTime todayStripped() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  String get formattedDate {
    return DateFormat('d. MMMM').format(this);
  }
}
