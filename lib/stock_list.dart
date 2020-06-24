class Stock {

  final String company;
  final double price;
  final String date;

  Stock({this.company,this.date,this.price});

  static List<Stock> get(){
    List<Stock> stocks= List<Stock> ();
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));
    stocks.add(Stock(company: "Tesla Inc.",date: "3 Aug, 2020 03:59 IST",price: 234.34));


    return stocks;
  }



}
