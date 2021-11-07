import 'package:flutter/material.dart';
import 'package:flutter_chart/const.dart';
import 'package:flutter_chart/Ep%201%20Line%20Chart/line_chart_model_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  void initState() {
    super.initState();

    _toolTip = TooltipBehavior(
      enable: true,
    );
    _crossHair = CrosshairBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      lineType: CrosshairLineType.horizontal,
    );

    _trackBall = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      lineColor: Colors.red,
    );
  }

  /// crosshair behavior is use to show all data point in graph
  ///

  CrosshairBehavior? _crossHair;

  /// tooltip is use to point value on particular point of graphs

  TooltipBehavior? _toolTip;

  /// trackball behavior to show graph data properly
  TrackballBehavior? _trackBall;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Line Type '),
        ),
        body: SizedBox(
          height: height(context),
          width: width(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: SfCartesianChart(
              onDataLabelRender: (dataLabelArgs) {
                dataLabelArgs.color = Colors.red;
              },
              primaryXAxis: NumericAxis(
                interval: 20,
              ),
              tooltipBehavior: _toolTip,
              crosshairBehavior: _crossHair,
              trackballBehavior: _trackBall,
              series: <LineSeries>[
                LineSeries<LineChartModel, num>(
                  dataLabelSettings: const DataLabelSettings(
                    isVisible: true,
                  ),
                  markerSettings: const MarkerSettings(
                    isVisible: true,
                  ),
                  dataSource: lineChartList,
                  xValueMapper: (datum, index) => datum.days,
                  yValueMapper: (datum, index) => datum.sales,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
