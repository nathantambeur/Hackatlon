// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:calender/pages/options.dart';
import 'package:calender/widgets/eventtile.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'pages/basics_example.dart';
import 'pages/complex_example.dart';
import 'pages/events_example.dart';
import 'pages/multi_example.dart';
import 'pages/range_example.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  DateTime date = DateTime.now();
  DateFormat dateFormat = DateFormat("E dd/M/yy");
  var events = [
    [
      'https://media.istockphoto.com/photos/man-speaking-at-a-business-conference-picture-id499517325?b=1&k=20&m=499517325&s=170667a&w=0&h=jMCaZov25c5VR1CP-4axUdJPEKSpBWbzzWAubQS3-oo=',
      'SARRAAA ITS MEEE',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ],
    [
      'https://media.istockphoto.com/photos/man-speaking-at-a-business-conference-picture-id499517325?b=1&k=20&m=499517325&s=170667a&w=0&h=jMCaZov25c5VR1CP-4axUdJPEKSpBWbzzWAubQS3-oo=',
      'SARRAAA ITS MEEE',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ],
    [
      'https://media.istockphoto.com/photos/man-speaking-at-a-business-conference-picture-id499517325?b=1&k=20&m=499517325&s=170667a&w=0&h=jMCaZov25c5VR1CP-4axUdJPEKSpBWbzzWAubQS3-oo=',
      'SARRAAA ITS MEEE',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ],
    [
      'https://media.istockphoto.com/photos/man-speaking-at-a-business-conference-picture-id499517325?b=1&k=20&m=499517325&s=170667a&w=0&h=jMCaZov25c5VR1CP-4axUdJPEKSpBWbzzWAubQS3-oo=',
      'SARRAAA ITS MEEE',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ],
    [
      'https://media.istockphoto.com/photos/man-speaking-at-a-business-conference-picture-id499517325?b=1&k=20&m=499517325&s=170667a&w=0&h=jMCaZov25c5VR1CP-4axUdJPEKSpBWbzzWAubQS3-oo=',
      'SARRAAA ITS MEEE',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ]
  ];

  void nextDay() {
    setState(() {
      date = date.add(const Duration(days: 1));
    });
  }

  void previousDay() {
    setState(() {
      date = date.subtract(const Duration(days: 1));
    });
    print(dateFormat.format(date));
  }

  void _setDate(DateTime incomedate) {
    setState(() {
      date = incomedate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: DefaultTabController(
            initialIndex: 0,
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text(dateFormat.format(date)),
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.event),
                    ),
                    Tab(
                      icon: Icon(Icons.favorite),
                    ),
                    Tab(
                      icon: Icon(Icons.account_circle),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Scaffold(
                      body: ListView.builder(
                        itemBuilder: (_, index) {
                          return EventCard();
                        },
                        itemCount: events.length,
                      ),
                      floatingActionButton: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                ElevatedButton(
                                    child: Icon(Icons.arrow_back),
                                    onPressed: previousDay),
                                ElevatedButton(
                                    child: Icon(Icons.arrow_forward),
                                    onPressed: nextDay),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  child:
                                      Icon(Icons.format_list_bulleted_rounded),
                                  onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => OptionsPage()),
                                      )),
                              ElevatedButton(
                                child: Icon(Icons.calendar_month),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          TableEventsExample(_setDate, date)),
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                  Center(
                      child: Text(
                          "Favorites")), //use events list in a listvieuw to generate the list of event cards
                  Center(
                    child: Text("It's sunny here"),
                  ),
                ],
              ),
            )));
  }
}