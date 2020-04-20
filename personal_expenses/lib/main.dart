import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses App',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final List<Transaction>transactions = [
    Transaction(id: 't1',title: 'New Shoes',amount:3000.0,date: DateTime.now() ),
    Transaction(id: 't2',title: 'Groceries',amount: 220.50,date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal Expenses App'
      ),centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            color: Colors.blue,
            child: Container(width: double.infinity,child: Text('Chart!!')),
            elevation: 5,
          ),
          Column(
            children: transactions.map((tx){
              return Card(child: Row(
              children: <Widget>[
                Container(
                  margin:EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                      color: Colors.purple,
                      width: 2,
                  )
                  ),
                  child: Text(tx.amount.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20 ,
                      color: Colors.purple ,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tx.title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ) ,
                    ),
                    Text(
                      tx.date.toString(),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )

                  ],
                ),
              ],
              ),
              );
            }).toList(),
          ),
        ],
      )
    );
  }
}

