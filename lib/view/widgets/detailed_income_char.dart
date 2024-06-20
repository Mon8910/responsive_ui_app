import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:project_app/utilies/app_style.dart';

class DetailedIncomeChar extends StatefulWidget {
  const DetailedIncomeChar({super.key});

  @override
  State<DetailedIncomeChar> createState() => _DetailedIncomeChar();
}

class _DetailedIncomeChar extends State<DetailedIncomeChar> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        child: PieChart(
          getPieCharData(),
        ),
      ),
    );
  }

  PieChartData getPieCharData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
            title: activeIndex == 0 ? 'Design service' : '40%',
            value: 40,
            color: const Color(0xFF208CC8),
            radius: activeIndex == 0 ? 60 : 50,
            // showTitle: false,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
              color: activeIndex == 0 ? Colors.black : Colors.white,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2 : null,
            title: activeIndex == 1 ? 'Design product' : '25%',
            value: 25,
            color: const Color(0xFF4EB7F2),
            radius: activeIndex == 1 ? 60 : 50,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
              color: activeIndex == 1 ? Colors.black : Colors.white,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            value: 20,
            color: const Color(0xFF064061),
            radius: activeIndex == 2 ? 60 : 50,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
              color: activeIndex == 2 ? Colors.black : Colors.white,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
            title: activeIndex == 3 ? 'Other' : '22%',
            value: 22,
            color: const Color(0xFFE2DECD),
            radius: activeIndex == 3 ? 60 : 50,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
              color: activeIndex == 3 ? Colors.black : Colors.white,
            ),
          ),
        ]);
  }
}
