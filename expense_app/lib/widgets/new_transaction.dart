import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  //to pass addtransaction function
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enternedTitle = titleController.text;
    final enternedAmount = double.parse(amountController.text);
    if (enternedTitle.isEmpty || enternedAmount <= 0) {
      return;
    }
    // addTx(titleController.text, double.parse(amountController.text));
    widget.addTx(enternedTitle, enternedAmount);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: titleController,
                onSubmitted: (_) => submitData(),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Amount'),
                controller: amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData(),
              ),
              FlatButton(
                  textColor: Colors.purple,
                  onPressed: submitData,
                  child: const Text(
                    'Add Transaction',
                  ))
            ],
          )),
    );
  }
}
