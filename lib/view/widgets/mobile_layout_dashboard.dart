import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/allexpenses_and_quick_invoice.dart';
import 'package:project_app/view/widgets/income_section.dart';
import 'package:project_app/view/widgets/transction_section.dart';
class MobileLayoutDashboard extends StatelessWidget{
  const MobileLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
            );
  }

}