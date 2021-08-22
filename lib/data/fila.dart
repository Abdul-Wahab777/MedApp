import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../Constant1.dart';
class _PieData {
 _PieData(this.xData, this.yData, [this.text]);
 final String xData;
 final num yData;
//  final String text;
var text;
}


class Chart extends StatefulWidget {
  // const Chart({Key? key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  // @override
  List<_PieData> pieData = [
    _PieData('2015', 40,"Donation"),
    _PieData('2016', 28,"Accepted"),
    _PieData('2017', 34,"rejected"),
    _PieData('2018', 32,"current"),

  ];
   List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40), 
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40),
      _SalesData('May', 40), 
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     elevation: 0,
     centerTitle: true,
     title: Text("Statictics",style: TextStyle(color: Colors.black),),
     backgroundColor: Colors.white,
     iconTheme: IconThemeData(color: Colors.black),
   ),
   body: Column(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //  crossAxisAlignment: CrossAxisAlignment.,
     children: [
       Container(
         child: Center(
           child:SfCircularChart(
           title: ChartTitle(text:'Statistics of person'),
           legend: Legend(isVisible: true),
           series: <PieSeries<_PieData, String>>[
             PieSeries<_PieData, String>(
               explode: true,
               explodeIndex: 0,
               dataSource: pieData,
               xValueMapper: (_PieData data, _) => data.xData,
               yValueMapper: (_PieData data, _) => data.yData,
               dataLabelMapper: (_PieData data, _) => data.text,
               dataLabelSettings: DataLabelSettings(isVisible: true)),
           ]
          )
         ),
       ),
        Expanded(
          child: Container(
            // color: Colors.blueAccent,
            // height: 380,
                         width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                      color: kGrey1Color,
                    ),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
 Text( 'Statistics per Month', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
                Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        //Initialize the spark charts widget
                        child: SfSparkLineChart.custom(
                          
                          //Enable the trackball
                          trackball: SparkChartTrackball(
                              activationMode: SparkChartActivationMode.tap),
                          //Enable marker
                          marker: SparkChartMarker(
                              displayMode: SparkChartMarkerDisplayMode.all),
                          // Enable data label
                          
                          labelDisplayMode: SparkChartLabelDisplayMode.all,
                          xValueMapper: (int index) => data[index].year,
                          yValueMapper: (int index) => data[index].sales,
                          dataCount: data.length,
                        ),
                      ),
                    ),
                ),
              ],
            ),
          ),
        )
     ],
   ),
 );
}


  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Syncfusion Flutter chart'),
  //       ),
  //       body: Column(children: [
  //         //Initialize the chart widget
  //         SfCartesianChart(
  //             primaryXAxis: CategoryAxis(),
  //             // Chart title
  //             title: ChartTitle(text: 'Half yearly sales analysis'),
  //             // Enable legend
  //             legend: Legend(isVisible: true),
  //             // Enable tooltip
  //             tooltipBehavior: TooltipBehavior(enable: true),
  //             series: <ChartSeries<_SalesData, String>>[
  //               LineSeries<_SalesData, String>(
  //                   dataSource: data,
  //                   xValueMapper: (_SalesData sales, _) => sales.year,
  //                   yValueMapper: (_SalesData sales, _) => sales.sales,
  //                   name: 'Sales',
  //                   // Enable data label
  //                   dataLabelSettings: DataLabelSettings(isVisible: true))
  //             ]),
  //         Expanded(
  //           child: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             //Initialize the spark charts widget
  //             child: SfSparkLineChart.custom(
  //               //Enable the trackball
  //               trackball: SparkChartTrackball(
  //                   activationMode: SparkChartActivationMode.tap),
  //               //Enable marker
  //               marker: SparkChartMarker(
  //                   displayMode: SparkChartMarkerDisplayMode.all),
  //               //Enable data label
  //               labelDisplayMode: SparkChartLabelDisplayMode.all,
  //               xValueMapper: (int index) => data[index].year,
  //               yValueMapper: (int index) => data[index].sales,
  //               dataCount: 5,
  //             ),
  //           ),
  //         )
  //       ]));
  // }
// }
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}