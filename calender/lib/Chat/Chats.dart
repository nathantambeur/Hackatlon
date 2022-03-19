import 'package:calender/pages/options.dart';
import 'package:flutter/material.dart';

// importing material design library

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
// value set to false
  bool _value = false;

  var locations = [
    "Ask a Local",
    "Ask a Noobie",
    "Ask our Chatbot",
    "Find a Classmate",
  ];
// App widget tree
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chats'),
        ),
        body: SizedBox(
          width: 400,
          height: double.infinity,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amberAccent),
                  borderRadius: BorderRadius.circular(20),
                ), //BoxDecoration

                /** CheckboxListTile Widget **/
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return ListTile(
                        leading: Icon(Icons.chat_bubble),
                        title: Text(locations[index]),
                        subtitle: Text("Bing me to chat"),
                        autofocus: false,
                        selected: _value,
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => OptionsPage()),
                            ));
                  },
                  itemCount: locations.length,

                  //CheckboxListTile
                ), //Container
              ), //Padding
            ), //Center
          ), //SizedBox
          //Scaffold
        )); //MaterialApp
  }
}
