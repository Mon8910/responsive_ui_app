import 'package:flutter/material.dart';
import 'package:project_app/utilies/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration:
              const ShapeDecoration(shape: OvalBorder(), color: Colors.white),
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}