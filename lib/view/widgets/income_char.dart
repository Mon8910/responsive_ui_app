import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChar extends StatefulWidget {
  const IncomeChar({super.key});

  @override
  State<IncomeChar> createState() => _IncomeCharState();
}

class _IncomeCharState extends State<IncomeChar> {
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
            value: 40,
            color: const Color(0xFF208CC8),
            radius: activeIndex == 0 ? 60 : 50,
            showTitle: false,
          ),
          PieChartSectionData(
              value: 25,
              color: const Color(0xFF4EB7F2),
              radius: activeIndex == 1 ? 60 : 50,
              showTitle: false),
          PieChartSectionData(
              value: 20,
              color: const Color(0xFF064061),
              radius: activeIndex == 2 ? 60 : 50,
              showTitle: false),
          PieChartSectionData(
              value: 22,
              color: const Color(0xFFE2DECD),
              radius: activeIndex == 3 ? 60 : 50,
              showTitle: false)
        ]);
  }
}
