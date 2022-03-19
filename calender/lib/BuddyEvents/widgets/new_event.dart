import 'package:flutter/material.dart';

class NewEvent extends StatefulWidget {
  final Function adder;

  NewEvent(this.adder);

  @override
  State<NewEvent> createState() => _NewEventState();
}

class _NewEventState extends State<NewEvent> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitdata() {
    widget.adder(titleController.text, double.parse(amountController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: amountController,
            decoration: InputDecoration(labelText: 'Amount of Pers.'),
            onSubmitted: (_) {
              submitdata();
            },
          ),
          // ignore: deprecated_member_use
          FlatButton(
              color: Colors.purple,
              onPressed: () {
                submitdata();
              },
              child: Text("Add Buddy Event"))
        ]),
      ),
    );
  }
}
