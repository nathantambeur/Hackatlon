// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:calender/Chat/Chats.dart';
import 'package:calender/Recomendations/main.dart';
import 'package:calender/pages/options.dart';
import 'package:calender/widgets/eventpage.dart';
import 'package:calender/widgets/eventtile.dart';
import 'package:calender/widgets/navigationstatus.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'BuddyEvents/main.dart';
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
        primarySwatch: Colors.cyan,
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
  var navigation = [
    [
      'https://res.cloudinary.com/td-applicatiebeheer-ku-leuven/image/upload/w_800/v1597607273/kulag_dev/BuildingPhotoId-9876c2dd-2b18-4e50-aa3b-b40b11982a90.jpg',
      'Pieter De Somer',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ],
    [
      'https://www.veto.be/cache/img/3f95f521acd225376fe91652feda46c2-Agora.jpg',
      'AGORA',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ],
    [
      'https://res.cloudinary.com/td-applicatiebeheer-ku-leuven/image/upload/w_800/v1597609115/kulag_dev/BuildingPhotoId-d8fecc4c-dc0d-43c2-8578-636cacca008b.jpg',
      'Group T',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ],
    [
      'https://www.kuleuven.be/english/admissions/images/university-hall.jpg/download',
      'Universiteitshal Leuven',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ],
    [
      'https://res.cloudinary.com/td-applicatiebeheer-ku-leuven/image/upload/w_800/v1597607810/kulag_dev/BuildingPhotoId-1969ae0b-5482-48e3-a7da-2244f0f3c81d.jpg',
      'Grote Aula Leuven',
      'My name is Sarah and I am a New York City based Flutter developer. I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.'
    ]
  ];
  var events = [
    [
      'https://res.cloudinary.com/td-applicatiebeheer-ku-leuven/image/upload/w_800/v1597607273/kulag_dev/BuildingPhotoId-9876c2dd-2b18-4e50-aa3b-b40b11982a90.jpg',
      'VTK Mastercantus ',
      'https://www.kuleuven.be/toekomstigestudenten/openles/leuven/images/vtk-schild.png/image_preview'
    ],
    [
      'https://holyhack.aftleuven.be/wp-content/uploads/2021/10/Holy-hack-feature-square.jpg',
      'AFT Holy Hack',
      'https://www.loko.be/files/_660xAUTO_fit_center-center_100_none/logo_parallel.png'
    ],
    [
      'https://ekonomika.be/wp-content/uploads/2022/02/schaats-td-final-1920x1080.png',
      'SchaatsTD EKONOMIKA',
      'https://utiles.ekonomika.be/img/partners/ekonomika.png'
    ],
    [
      'https://www.tecside.be/assets/images/portfolio/galabalindustira18_1.jpg',
      'INDUSTRIA galabal',
      'https://www.loko.be/files/_660xAUTO_fit_center-center_100_none/Industria.png'
    ],
    [
      'https://d1k976m6pd0u9m.cloudfront.net/public/event/uni_event_flx9m1zy9r.jpg',
      'Virtual LBK Jobfair',
      'https://set.kuleuven.be/go-global/2012/lbk-logo.png/image_preview'
    ]
  ];
  var events_perday = {
    DateTime(2022, 3, 19): [
      [
        'https://res.cloudinary.com/td-applicatiebeheer-ku-leuven/image/upload/w_800/v1597607273/kulag_dev/BuildingPhotoId-9876c2dd-2b18-4e50-aa3b-b40b11982a90.jpg',
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
      ],
    ],
  };

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
            length: 5,
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
                      icon: Icon(Icons.assistant_navigation),
                    ),
                    Tab(
                      icon: Icon(Icons.chat),
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
                          return EventCard(
                            picture1: events[index][0],
                            name1: events[index][1],
                            schild1: events[index][2],
                          );
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
                    child: MyHomePage(),
                  ),
                  Scaffold(
                      body: ListView.builder(
                        itemBuilder: (_, index) {
                          return NavigationCard(
                            picture: navigation[index][0],
                            name: navigation[index][1],
                          );
                        },
                        itemCount: navigation.length,
                      ),
                      floatingActionButton: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(),
                          ),
                        ],
                      )), //use events list in a listvieuw to generate the list of event cards
                  NavigationPage(),

                  BuddyEventPage(),
                ],
              ),
            )));
  }
}
