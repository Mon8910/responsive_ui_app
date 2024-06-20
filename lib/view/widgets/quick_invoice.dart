import 'package:flutter/material.dart';
import 'package:project_app/utilies/custom_button.dart';
import 'package:project_app/view/widgets/custom_backgroundcontainer.dart';
import 'package:project_app/view/widgets/latest_transcation_item.dart';
import 'package:project_app/view/widgets/quick_invoice_form.dart';
import 'package:project_app/view/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        chhild: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
        QuickInvoiceHeader(),
        LatestTranscationItem(),
        Divider(
          height: 24,
        ),
        QuickInvoiceForm(),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                background: Colors.white,
                textColor: Color(0xFF4EB7F2),
              ),
            ),
            SizedBox(width: 8,),
            Expanded(
              child: CustomButton(
                title: 'add Money',
              ),
            ),
          ],
        ),
        //SizedBox(height: 20,)
              ],
            ));
  }
}
