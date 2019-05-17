import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sketcher_app/ui/chart/line_chart.dart';

import 'chart/bar_chart.dart';
import 'chart/pie_chart.dart';

class ChartPage extends StatelessWidget {
  List<double> points = [50, 90, 1003, 500, 150, 120, 200, 80];

  List<String> labels = [
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chart Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: CustomPaint(
                  size: Size(150, 150),
                  painter: LineChart(points: points, pointSize: 5.0, pointColor: Colors.pinkAccent, lineColor: Colors.pinkAccent, lineWidth: 2.0),
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 4.0)),
              Container(
                child: CustomPaint(
                  size: Size(150, 150),
                  painter: PieChart(
                    percentage: 55,
                    textScaleFactor: 1.5,
                    textColor: Colors.blueGrey
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Container(
                child: CustomPaint(
                    size: Size(250, 250),
                    foregroundPainter: BarChart(
                        data: points,
                        labels: labels,
                        color: Colors.pinkAccent)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
