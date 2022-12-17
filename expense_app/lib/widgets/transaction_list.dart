import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty ? Column(
        children: [
          Text('NO Transaction Yet!'),
          Container(height: 200,
          child: Image.asset('assets/image/waiting.png',fit: BoxFit.cover,),
          )

        ],
      ) : ListView.builder(
        itemBuilder: (context, index) => Card(
            child: Row(children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                padding: const EdgeInsets.all(10),
                child: Text(
                  '\$ ${transactions[index].amount}',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[index].title,
                    style:Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    DateFormat.yMEd().format(transactions[index].date),
                    style: const TextStyle(color: Colors.grey, fontSize: 10),
                  )
                ],
              )
            ]),
          ),
        itemCount: transactions.length,
      ),
    );
  }
}
