import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function adder;

  NewTransaction(this.adder);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitdata() {
    widget.adder(titleController.text, amountController.text);
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
            controller: amountController,
            decoration: InputDecoration(labelText: 'Description'),
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
              child: Text("Add Recommendation"))
        ]),
      ),
    );
  }
}
