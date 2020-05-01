part of 'widget.dart';
external DateTime subtract(Duration duration);
class CartData extends StatelessWidget {
  const CartData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var rng = new Random();

    var data=[
      Sales(now, rng.nextInt(100)), 
    ];
 
    for(int i = 1; i<5; i++){ 
      data.add(Sales(now.subtract(Duration(days:i)), rng.nextInt(100*i)));
    }

    var series=[
      chart.Series<Sales, DateTime>( 
        colorFn: (_, __) => chart.MaterialPalette.blue.shadeDefault,
        domainFn: (Sales sales,_)=>sales.day,
        measureFn: (Sales sales,_)=>sales.sold,
        id:'Sales',
        data:data,
      )
    ];
 
    var ch = chart.TimeSeriesChart(
      
      series,
      animate: false,
      domainAxis: chart.EndPointsTimeAxisSpec(), 
    );


    return Scaffold( 
      body: ch,
    );
  }
}

class Sales {
  final DateTime day;
  final int sold;
  Sales(this.day,this.sold);
}