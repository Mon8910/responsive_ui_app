import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/allexpenses_and_quick_invoice.dart';
import 'package:project_app/view/widgets/custom_drawer.dart';
import 'package:project_app/view/widgets/income_section.dart';
import 'package:project_app/view/widgets/transction_section.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 10,
        ),
       Expanded(
        flex: 3,
         child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
          children: [
             Expanded(
            flex: 2,
            child: AllExpensesAndQuickVoice(),
          ),
          Expanded(
            child: Column(
              children: [
                TransctionSection(),
                Expanded(
                  child: IncomeSection(),
                ),
              ],
            ),
          )
          ],
         ),
            )
          ],
         )
       )
      ],
    );
  }
}
