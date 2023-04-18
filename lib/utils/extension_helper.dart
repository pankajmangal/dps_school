import 'package:dps_school/utils/app_utils.dart';
import 'package:intl/intl.dart';

extension StringExtension on String{

  get firstLetterToUpperCase {
    return this[0].toUpperCase() + substring(1);
  }
}

extension DateTimeExtension on DateTime{
  get trimMilliseconds {
    return DateTime(year, month, day, hour, minute, 0, 0);
  }

  get dateFormat => DateFormat('yyyy-MM-dd').format(this);
  get dateFormatAllJobs => DateFormat('dd/MM/yyyy').format(this);
  get dateFormatAllJobsTime => DateFormat('hh : MM a').format(this);
}

extension DateTimeToLocal on DateTime {
  String changeToLocal(String dateTime, {bool toDate = false}){

    String dateTimeFormat = AppUtils.dateTimeFormat;
    var dateTimeUTC = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateTime, true);
    var dateLocal = dateTimeUTC.toLocal();
    if(toDate){
      return dateLocal.toIso8601String();
    }
    return DateFormat(dateTimeFormat).format(dateLocal);
  }

  get convertDateToRequiredFormat {
    DateTime today = DateTime.now();
    // Duration oneDay = const Duration(days: 1);
    // Duration twoDay = const Duration(days: 2);
    Duration oneWeek = const Duration(days: 7);
    late String month;
    switch (this.month) {
      case 1:
        month = "January";
        break;
      case 2:
        month = "February";
        break;
      case 3:
        month = "March";
        break;
      case 4:
        month = "April";
        break;
      case 5:
        month = "May";
        break;
      case 6:
        month = "June";
        break;
      case 7:
        month = "July";
        break;
      case 8:
        month = "August";
        break;
      case 9:
        month = "September";
        break;
      case 10:
        month = "October";
        break;
      case 11:
        month = "November";
        break;
      case 12:
        month = "December";
        break;
    }

    Duration difference = today.difference(this);
    late String weekDay;
    /*if (difference.compareTo(oneDay) < 1) {
      return "today";
    } else if (difference.compareTo(twoDay) < 1) {
      return "yesterday";
    } else*/
    if (difference.compareTo(oneWeek) < 1) {
      switch (weekday) {
        case 1:
          weekDay = "Monday";
          break;
        case 2:
          weekDay = "Tuesday";
          break;
        case 3:
          weekDay = "Wednesday";
          break;
        case 4:
          weekDay = "Thursday";
          break;
        case 5:
          weekDay = "Friday";
          break;
        case 6:
          weekDay = "Saturday";
          break;
        case 7:
          weekDay = "Sunday";
          break;
      }
      return "$weekDay, $day $month $year";
    } /*else if (tm.year == today.year) {
      return '${tm.day} $month';
    } else {
      return '${tm.day} $month ${tm.year}';
    }*/

  }
}

extension ParseNumbers on String {
  int parseInt() {
    return int.parse(this);
  }
  double parseDouble() {
    return double.parse(this);
  }
}

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

extension FormattedMessage on Exception {
  String get getMessage {
    if (toString().startsWith("Exception: ")) {
      return toString().substring(11);
    }else {
      return toString();
    }
  }
}