import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, response) {
            activeIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            radius: activeIndex == 0 ? 60 : 50,
            showTitle: false,
            value: 40,
            color: const Color(
              0xff208bc7,
            ),
          ),
          PieChartSectionData(
            radius: activeIndex == 1 ? 60 : 50,
            showTitle: false,
            value: 25,
            color: const Color(
              0xff4db7f2,
            ),
          ),
          PieChartSectionData(
            radius: activeIndex == 2 ? 60 : 50,
            showTitle: false,
            value: 20,
            color: const Color(
              0xff064060,
            ),
          ),
          PieChartSectionData(
            radius: activeIndex == 3 ? 60 : 50,
            showTitle: false,
            value: 22,
            color: const Color(
              0xffe2decd,
            ),
          ),
        ]);
  }
}
