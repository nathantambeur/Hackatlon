import 'dart:html';

import 'package:calender/modules/presidium.dart';
import 'package:flutter/material.dart';

import 'presidium.dart';

abstract class Event {
  final DateTime date;
  final String title;
  final String desciption;
  final Presidium presidium;
  final File banner;

  const Event(
      {required this.presidium,
      required this.date,
      required this.title,
      required this.desciption,
      required this.banner});
}

class CantusEvent extends Event {
  CantusEvent(
      {required DateTime date,
      required String title,
      required String desciption,
      required Presidium presidium,
      required File banner})
      : super(
            date: date,
            title: title,
            desciption: desciption,
            presidium: presidium,
            banner: banner);
}

class TDEvent extends Event {
  TDEvent(
      {required DateTime date,
      required String title,
      required String desciption,
      required Presidium presidium,
      required File banner})
      : super(
            date: date,
            title: title,
            desciption: desciption,
            presidium: presidium,
            banner: banner);
}

class JobFairEvent extends Event {
  JobFairEvent(
      {required DateTime date,
      required String title,
      required String desciption,
      required Presidium presidium,
      required File banner})
      : super(
            date: date,
            title: title,
            desciption: desciption,
            presidium: presidium,
            banner: banner);
}
