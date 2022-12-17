import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import './model/transaction.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Expense',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
        fontFamily: 'OpenSans',
        textTheme: ThemeData.light().textTheme.copyWith(
           headline6: TextStyle(fontFamily: 'OpenSans',fontSize: 18,fontWeight: FontWeight.bold)
        ),
        appBarTheme: AppBarTheme(textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(fontFamily: 'OpenSans',fontSize: 20,fontWeight: FontWeight.bold)
        ))
      ),
      home: const MyHomePage(title: 'Expense'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    // Transaction(
    //     id: 'j1', title: 'My books', amount: 240.4, date: DateTime.now()),
    // Transaction(id: 'j2', title: 'My Shoe', amount: 24.9, date: DateTime.now()),
    // Transaction(id: 'j3', title: 'My Pen', amount: 2.40, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: NewTransaction(_addNewTransaction),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.orange,
              child: const Card(
                elevation: 5,
                child: Text('bargraph'),
              ),
            ),
            TransactionList(_userTransactions)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddNewTransaction(context),
        // backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
      ),
    );
  }
}
