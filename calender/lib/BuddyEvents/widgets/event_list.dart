import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/event.dart';

class EventList extends StatelessWidget {
  final List<Event> events;

  EventList(this.events);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  width: 80,
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Theme.of(context).primaryColor)),
                  child: Text(" € ${events[index].amount.toStringAsFixed(2)}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.amber)),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          events[index].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Text(DateFormat().format(events[index].date),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.grey)),
                      ]),
                )
              ],
            ),
          );
        },
        itemCount: events.length,
      ),
    );
  }
}
