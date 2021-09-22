import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String format({
    String format = 'yyyy/MM/dd HH:mm:ss',
    String locale = 'ja_JP',
  }) {
    final formatter = DateFormat(format, locale);
    return formatter.format(this);
  }

  DateTime toYearMonthDay() {
    final date = DateTime(year, month, day, 0, 0, 0);
    return date.add(date.timeZoneOffset).toUtc();
  }

  DateTime toAddSecondDate(int second) {
    final date = DateTime(year, month, day, hour, minute, this.second + second,
        millisecond, millisecond);
    return date;
  }

  DateTime toSubstractDate(int day, int hour) {
    final date = DateTime(year, month, this.day - day, this.hour - hour, minute,
        second, millisecond, millisecond);
    return date;
  }
}
