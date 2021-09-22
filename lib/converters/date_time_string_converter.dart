import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class DateTimeStringConverter implements JsonConverter<DateTime, String> {
  const DateTimeStringConverter();

  @override
  DateTime fromJson(String value) => DateTime.parse(value).toLocal();

  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();

  String convertTime(DateTime date) {
    return DateFormat('HH時mm分').format(date).toString();
  }

  String convertTime2(DateTime date) {
    return DateFormat('HH:mm').format(date).toString();
  }

  String convertDateTime2(DateTime date) {
    return DateFormat('yyyy/MM/dd').format(date).toString();
  }

  String convertDateTime3(DateTime date) {
    return DateFormat('yyyy/MM').format(date).toString();
  }

  String getJapaneseDay(DateTime selectedDay) {
    Intl.defaultLocale = 'ja_JP';
    return DateFormat('yyyy年MM月dd日(E)').format(selectedDay).toString();
  }

  String getJapaneseDay2(DateTime selectedDay) {
    Intl.defaultLocale = 'ja_JP';
    return DateFormat('yyyy年MM月dd日').format(selectedDay).toString();
  }

  String getJapaneseDay3(DateTime selectedDay) {
    Intl.defaultLocale = 'ja_JP';
    return DateFormat('yyyy年MM月').format(selectedDay).toString();
  }

  // 日本語表記からDateTimeの形へ変換
  DateTime getDateTime(String dateStr) {
    dateStr = dateStr.split('日')[0];

    final dateStr2 =
        dateStr.replaceAll('年', '-').replaceAll('月', '-').replaceAll('日', '');
    return DateTime.parse(dateStr2);
  }

  // 日本語表記からdateTime型へ変換する
  DateTime? getDateTimeFromJPDate(String? dateStr) {
    if (dateStr == null || dateStr == '') {
      return null;
    }

    final year = int.parse(dateStr.substring(0, dateStr.indexOf('年')));

    final month = int.parse(
        dateStr.substring(dateStr.indexOf('年') + 1, dateStr.indexOf('月')));

    final day = dateStr.contains('日')
        ? int.parse(
            dateStr.substring(dateStr.indexOf('月') + 1, dateStr.indexOf('日')))
        : 1;

    final hour = dateStr.contains('時')
        ? int.parse(dateStr.split('時')[0].substring(
            dateStr.split('時')[0].length - 2, dateStr.split('時')[0].length))
        : 0;

    final minute = dateStr.contains('分')
        ? int.parse(dateStr.split('分')[0].substring(
            dateStr.split('分')[0].length - 2, dateStr.split('分')[0].length))
        : 0;

    return DateTime(year, month, day, hour, minute);
  }

  // 日本語表記からDateTimeの形へ変換
  String getTimeString(String dateStr) {
    dateStr = dateStr.split('日')[0];
    final hour = int.parse(dateStr.substring(0, dateStr.indexOf('時間')));
    final minute = int.parse(
        dateStr.substring(dateStr.indexOf('間') + 1, dateStr.indexOf('分')));

    return hour.toString().padLeft(2, '0') +
        ':' +
        minute.toString().padLeft(2, '0');
  }
}
