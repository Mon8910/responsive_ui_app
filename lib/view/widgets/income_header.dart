import 'package:flutter/material.dart';
import 'package:project_app/utilies/app_style.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Income',
          style: AppStyle.styleSemiBold20(context),
        ),
        Container(
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFFF1F1F1), width: 1),
              ),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                 Text(
                  'Monthly',
                  style: AppStyle.styleMedium16(context),
                ),
                const SizedBox(
                  width: 16,
                ),
                Transform.rotate(
                    angle: -1.57079633, child: const Icon(Icons.arrow_back_ios))
              ],
            ),
          ),
        )
      ],
    );
  }
}
