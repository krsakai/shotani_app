import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';


enum AppDateFormat {
  yearToDay,
  yearToMinute,
  yearToSymbol,
  monthToDay,
  hourToMinute,
  twoDigitsHourToMinute,
  noSeparatorYear,
  noSeparatorMonthPadding,
  noSeparatorMonth,
  noSeparatorMonthEn,
  noSeparatorYearToDay,
  noSeparatorYearToMinute,
  noSeparatorYearToSecond,
  noSeparatorYearToMillisecond,
  noSeparatorHourToMinute,
  noSeparatorHour,
  noSeparatorMinute,
  hyphenYearToDay,
  yearToSecond,
  iSO8601Plus,
  slashSeparatorYearToSecond,
  displayedYearToMonth,
  displayedYearToDay,
  displayedYearToMin,
  displayMonthToDay,
  displayMonthToSymbol,
  fileDataYearToMin
}

extension AppDateFormatExtension on AppDateFormat {
  String get formater {
    switch (this) {
      case AppDateFormat.yearToDay: return "yyyy/MM/dd";
      case AppDateFormat.yearToMinute: return "yyyy/MM/dd HH:mm";
      case AppDateFormat.yearToSymbol: return "yyyy/MM/dd (EEE)";
      case AppDateFormat.monthToDay: return "M/d";
      case AppDateFormat.hourToMinute: return "H:mm";
      case AppDateFormat.twoDigitsHourToMinute: return "HH:mm";
      case AppDateFormat.noSeparatorYear: return "yyyy";
      case AppDateFormat.noSeparatorMonthPadding: return "M";
      case AppDateFormat.noSeparatorMonth: return "MM";
      case AppDateFormat.noSeparatorMonthEn: return "MMM";
      case AppDateFormat.noSeparatorYearToDay: return "yyyyMMdd";
      case AppDateFormat.noSeparatorYearToMinute: return "yyyyMMddHHmm";
      case AppDateFormat.noSeparatorYearToSecond: return "yyyyMMddHHmmss";
      case AppDateFormat.noSeparatorYearToMillisecond: return "yyyyMMddHHmmssSSS";
      case AppDateFormat.noSeparatorHourToMinute: return "HHmm";
      case AppDateFormat.noSeparatorHour: return "HH";
      case AppDateFormat.noSeparatorMinute: return "mm";
      case AppDateFormat.hyphenYearToDay: return "yyyy-MM-dd";
      case AppDateFormat.yearToSecond: return "yyyy-MM-dd HH:mm:ss";
      case AppDateFormat.iSO8601Plus: return "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
      case AppDateFormat.slashSeparatorYearToSecond: return "yyyy/MM/dd HH:mm:ss";
      case AppDateFormat.displayedYearToMonth: return "yyyy年 M月";
      case AppDateFormat.displayedYearToDay: return "yyyy年 M月d日";
      case AppDateFormat.displayedYearToMin: return "yyyy年 M月d日 H時mm分";
      case AppDateFormat.displayMonthToDay: return "M月d日";
      case AppDateFormat.displayMonthToSymbol: return "MM月dd日 (EEE)";
      case AppDateFormat.fileDataYearToMin: return "yyyy/MM/dd/H:mm";
      default: return "";
    }
  }
}

extension StringDate on String {
  DateTime toDateWith(AppDateFormat appDateFormat) {
    initializeDateFormatting("ja_JP");
    return DateTime.parse(this);
  }
}

extension Date on DateTime {
  String toStringWith(AppDateFormat appDateFormat) => DateFormat(appDateFormat.formater, 'ja_JP').format(this);
}