import 'dart:math';

import 'package:intl/intl.dart';

/// intl package to structure date format
final DateFormat formatter = DateFormat('yyyy-MM-dd hh:mm');
final DateFormat formatterTable = DateFormat('dd/MM/yyyy');
final DateFormat formatterDateTime = DateFormat('dd/MM/yyyy à hh:mm');
final DateFormat formatterTime = DateFormat('dd/MM/yyyy hh:mm:ss');
final DateFormat formatterTimeNow = DateFormat('hh:mm');

/// format date
String formatDate(String s) {
  return formatter.format(DateTime.parse(s));
}


/// format date table
String formatDateTable(String s) {
  return formatterTable.format(DateTime.parse(s));
}

/// format date table
String formatTimeNow() {
  return formatterTimeNow.format(DateTime.now());
}

String formatDateTime(DateTime dateTime){
  return formatterTable.format(dateTime);
}


String formatDateTimeDialog(String s) {
  return formatterDateTime.format(DateTime.parse(s));
}

DateTime firstDayOfWeek(DateTime dateTime){
  return dateTime.subtract(Duration(days: dateTime.weekday-1));
}

DateTime endDayOfWeek(DateTime dateTime){
  return firstDayOfWeek(dateTime).add(const Duration(days: 6));
}


String printDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return "${twoDigits(duration.inHours)}:$twoDigitMinutes";
}

String formatTime(String s) {
  var time=s.split(":");
  int hh=int.parse(time[0]);
  int mm=int.parse(time[1]);
  int ss=int.parse(time[2]);
  if(ss>=60){
    mm+=1;
    ss=ss-60;
  }
  if(mm>=60){
    hh+=1;
    mm=mm-60;
  }

  String hour="";
  String minute="";
  String second="";
  if(hh>=10) {
    hour=hh.toString();
  }else{
    hour="0$hh";
  }

  if(mm>=10) {
    minute=mm.toString();
  }else{
    minute="0$mm";
  }
  if(ss>=10) {
    second=ss.toString();
  }else{
    second="0$ss";
  }
  return "$hour:$minute:$second";
}

