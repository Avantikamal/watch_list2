import 'package:flutter/material.dart';
import 'stock_list.dart';
class Stock_ListView extends StatelessWidget {


  List<Stock> stocks;
  Stock_ListView({this.stocks});

  

  @override
  Widget build(BuildContext context) {
    return ListView.separated(

      separatorBuilder: (context,index){

        return Divider(
          color: Colors.grey.shade400,
        );
      },
      itemCount: stocks.length,
      itemBuilder: (context,index){

        final stock=stocks[index];

        Color changeColor(index){                            //alternate colored items
          if(index % 2==0)
            return Colors.green;
          else
            return Colors.red;
        }

        Icon changeIcon(index){                                //for difference in icon
          if(index % 2==0)
            return Icon(Icons.keyboard_arrow_up,color: changeColor(index),size: 15.0,);
          else
            return Icon(Icons.keyboard_arrow_down,color: changeColor(index),size: 15.0,);
        }




        return ListTile(
          contentPadding: EdgeInsets.all(10.0),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("${stock.company}",
                style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.w700,
                fontSize: 25),),
              SizedBox(
                height: 4.0,
              ),
              Text("${stock.date}",
                style: TextStyle(color: Colors.grey,
                    fontSize: 13),
              ),
            ],
          ),
          trailing: Column(

            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
        Text("${stock.price}",
        style: TextStyle(color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.w800),),



        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              Icon ( Icons.keyboard_arrow_up,
            color: changeColor(index),
            size: 15,),

            Text('75.60(0.65%)',
            style: TextStyle(color: changeColor(index),
            fontSize: 14,
            fontWeight: FontWeight.w500),
            ),

        Column(
          children: <Widget>[
            changeIcon(index),
            changeIcon(index),
          ],
        )
          ],

        ),


        ]),);
      },
   
    );
   
  }
}
