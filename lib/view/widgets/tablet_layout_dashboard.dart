import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/allexpenses_and_quick_invoice.dart';
import 'package:project_app/view/widgets/custom_drawer.dart';
import 'package:project_app/view/widgets/income_section.dart';
import 'package:project_app/view/widgets/transction_section.dart';

class TabletLayoutDashboard extends StatelessWidget {
  const TabletLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensesAndQuickVoice(),
                  SizedBox(
                    height: 24,
                  ),
                  TransctionSection(),
                  SizedBox(
                    height: 24,
                  ),
                  IncomeSection()
                ],
              ),
            )),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
