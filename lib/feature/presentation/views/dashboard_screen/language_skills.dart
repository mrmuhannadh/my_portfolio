import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LanguageSkills extends StatelessWidget {
  const LanguageSkills({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Tamil', 100, Colors.blue),
      ChartData('English', 90, Colors.green),
      ChartData('Sinhala', 90, Colors.red),
    ];

    List<Widget> dataWidgets = [];
    for (var data in chartData) {
      dataWidgets.add(
        Row(
          children: [
            Text(
              data.x,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 10),
            Container(
              width: 20,
              height: 20,
              color: data.color,
            ),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppStrings.languageSkills,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SfCircularChart(series: <CircularSeries>[
            RadialBarSeries<ChartData, String>(
              dataSource: chartData,
              useSeriesColor: true,
              trackOpacity: 0.2,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              maximumValue: 100,
              pointColorMapper: (ChartData data, _) => data.color,
              enableTooltip: true,
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
              ),
              cornerStyle: CornerStyle.bothCurve,
            )
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: dataWidgets,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
