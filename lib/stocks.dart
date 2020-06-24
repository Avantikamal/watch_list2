import 'package:flutter/material.dart';
import 'stock_list.dart';
import 'stock_listView.dart';
class Stocks extends StatefulWidget {
  @override
  _StocksState createState() => _StocksState();
}

class _StocksState extends State<Stocks> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//      body: SizedBox(
//        height: MediaQuery.of(context).size.height,
//        child: Stock_ListView(stocks: Stock.get())
//      ),
    );
  }
}

