import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            value: 40,
            title: activeIndex == 0 ? "Design Service" : '40%',
            titleStyle: AppSytles.styleMeduim16
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(
              0xff208bc7,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
            value: 40,
            title: activeIndex == 1 ? "Design Product" : '40%',
            titleStyle: AppSytles.styleMeduim16
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
            radius: activeIndex == 1 ? 60 : 50,
            color: const Color(
              0xff4db7f2,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
            value: 40,
            title: activeIndex == 2 ? "Product royalti" : '40%',
            titleStyle: AppSytles.styleMeduim16
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(
              0xff064060,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            value: 40,
            title: activeIndex == 3 ? "Other" : '40%',
            titleStyle: AppSytles.styleMeduim16
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(
              0xffe2decd,
            ),
          ),
        ]);
  }
}
