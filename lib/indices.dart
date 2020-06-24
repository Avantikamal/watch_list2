import 'package:flutter/material.dart';
import 'stock_list.dart';
import 'stock_listView.dart';

class Indices extends StatefulWidget {
  @override
  _IndicesState createState() => _IndicesState();
}

class _IndicesState extends State<Indices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stock_ListView(stocks: Stock.get())   //list will be displayed
      ),
    );
  }
}
