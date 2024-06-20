import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/custom_backgroundcontainer.dart';
import 'package:project_app/view/widgets/income_header.dart';
import 'package:project_app/view/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        chhild: Column(
      children: [
      IncomeHeader(),
        IncomeSectionBody()
      ],
    ));
  }
}

