// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:calender/BuddyEvents/widgets/event_list.dart';
import 'package:calender/BuddyEvents/widgets/new_event.dart';
import 'package:flutter/material.dart';

import 'models/event.dart';

class BuddyEventPage extends StatefulWidget {
  const BuddyEventPage({
    Key? key,
  }) : super(key: key);
  State<BuddyEventPage> createState() => BuddyEventPageState();
}

class BuddyEventPageState extends State<BuddyEventPage> {
  void startAddNewEvent(ctx) {
    //let a form apear form below
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewEvent(addNewEvent); //wiget that pops up
        });
  }

  void addNewEvent(String title, double amount) {
    final trans = Event(
        id: DateTime.now().toString(),
        date: DateTime.now(),
        amount: amount,
        title: title);
    setState(() {
      events.add(trans);
    });
    return;
  }

  final List<Event> events = [
    Event(
        id: "t1", title: "COOK PASTA WITH ME", amount: 4, date: DateTime.now()),
    Event(
        id: "t2",
        date: DateTime.now(),
        amount: 2,
        title: "Need Friend: make flutter app with friends")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            EventList(events),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startAddNewEvent(context),
      ),
    );
  }
}
