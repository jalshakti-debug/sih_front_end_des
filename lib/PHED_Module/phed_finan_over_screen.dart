import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PhedFinanOverScreen extends StatefulWidget {
  const PhedFinanOverScreen({super.key});

  @override
  State<PhedFinanOverScreen> createState() => _PhedFinanOverScreenState();
}

class _PhedFinanOverScreenState extends State<PhedFinanOverScreen> {
@override
    Widget build(BuildContext context) {
        final List<ChartData> chartData = [
            ChartData('Expen..', 25),
            ChartData('Income', 70),
            ChartData('eg', 15)
        ];
        return Scaffold(
            body: Center(
                child: Container(
                    child: Row(
                      children: [
                        Flexible(
                          child: SfCircularChart(
                            selectionGesture: ActivationMode.longPress,
                              series: <CircularSeries>[
                                  // Render pie chart
                                  PieSeries<ChartData, String>(
                                      dataSource: chartData,
                                      pointColorMapper:(ChartData data, _) => data.color,
                                      xValueMapper: (ChartData data, _) => data.x,
                                      yValueMapper: (ChartData data, _) => data.y,
                                      explode: true,
                                      explodeIndex: 3,
                                      explodeGesture: ActivationMode.singleTap,
                                      dataLabelMapper: (datum, index) => chartData[index].x,
                                      dataLabelSettings: DataLabelSettings(isVisible: true),
                                  )
                              ]
                          ),
                        ),
                        Flexible(
                          child: SfCircularChart(
                            selectionGesture: ActivationMode.longPress,
                              series: <CircularSeries>[
                                  // Render pie chart
                                  PieSeries<ChartData, String>(
                                      dataSource: chartData,
                                      pointColorMapper:(ChartData data, _) => data.color,
                                      xValueMapper: (ChartData data, _) => data.x,
                                      yValueMapper: (ChartData data, _) => data.y,
                                      explode: true,
                                      explodeIndex: 3,
                                      explodeGesture: ActivationMode.singleTap,
                                      dataLabelMapper: (datum, index) => chartData[index].x,
                                      dataLabelSettings: DataLabelSettings(isVisible: true),
                                  )
                              ]
                          ),
                        ),
                      ],
                    )
                )
            )
        );
    }
}
    class ChartData {
        ChartData(this.x, this.y, [this.color]);
        final String x;
        final double y;
        final Color? color;
    }