import 'package:flutter/material.dart';
import 'indices.dart';
import 'stocks.dart';
import 'mutual_fund.dart';
import 'forex.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

 TabController controller;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=TabController(length: 4, vsync: this);
  }
@override
  void dispose() {
  controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Icon(Icons.more_vert,color: Colors.black,
        size: 33.0,),
        elevation: 0.0,
        title: Text('Watch List'
          ,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: 35
        ),),
        backgroundColor: Colors.white,
bottom: TabBar(
  indicatorWeight: 4.0,
  unselectedLabelColor: Colors.grey.shade400,
  labelColor: Colors.black,
labelStyle: TextStyle(fontWeight: FontWeight.w600,
    fontSize: 20),
  isScrollable: true,
  indicatorColor: Colors.black,
    controller: controller,
    tabs: <Tab>[

  Tab(
    child: Text('Indices'),
  ),
  Tab(
    child: Text('Stocks'),
  ),
  Tab(
    child: Text('Mutual fund'),
  ),
  Tab(
    child: Text('Forex'),
  )

]),
      ),
      body: TabBarView(
      controller:     controller,
      children: <Widget>[
        Indices(),
        Stocks(),
        Mutual_Fund(),
        Forex(),
      ]),
     
    );
  }
}
