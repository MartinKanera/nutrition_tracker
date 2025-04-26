extension DateTimeExtensions on DateTime {
  /// Returns a [DateTime] with the time stripped
  static DateTime todayStripped() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }
}
