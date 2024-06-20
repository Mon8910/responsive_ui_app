import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/detailed_income_char.dart';
import 'package:project_app/view/widgets/income_char.dart';
import 'package:project_app/view/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >=1200 && width <1750? const Expanded(child: Padding(
      padding: EdgeInsets.all(15),
      child: DetailedIncomeChar(),
    )):const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: IncomeChar()),
              Expanded(child: IncomeDetails())
            ],
          );
    
  }
}
