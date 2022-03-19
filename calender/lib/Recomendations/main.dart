// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:calender/Recomendations/widgets/new_transaction.dart';
import 'package:calender/Recomendations/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import 'models/transactions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void startAddNewTransaction(ctx) {
    //let a form apear form below
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransaction(_addNewTransaction); //wiget that pops up
        });
  }

  void _addNewTransaction(String title, String description) {
    final trans = Transaction(
        id: DateTime.now().toString(),
        date: DateTime.now(),
        description: description,
        title: title,
        likeCount: 0);
    setState(() {
      transactions.add(trans);
    });
    return;
  }

  List<Transaction> transactions = [
    Transaction(
        id: "t1",
        title: "Make a flutter app with friends",
        description: "cuz I love it",
        date: DateTime(2021, 10, 12),
        likeCount: 67),
    Transaction(
        id: "t2",
        date: DateTime.now(),
        description:
            "GO TO THE OUDEEEEUUU AND GET DRUUNNKKKK TIME TO PARRTTEEEYYYYYY",
        title: "Drink a beer on the Oude Markt",
        likeCount: 9),
    Transaction(
        id: "t2",
        date: DateTime(2022, 2, 2),
        description: "cuz I love it",
        title: "Going To the OHL game",
        likeCount: 34),
    Transaction(
        id: "t2",
        date: DateTime(2022, 1, 1),
        description: "cuz I love it",
        title: "Drink a beer on the Oude Markt",
        likeCount: 13)
  ];

  @override
  Widget build(BuildContext context) {
    transactions.sort((a, b) => b.likeCount.compareTo(a.likeCount));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TransactionList(transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startAddNewTransaction(context),
      ),
    );
  }
}
