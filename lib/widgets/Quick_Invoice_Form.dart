import 'package:flutter/material.dart';
import 'package:response_dashboard/widgets/Custom_Button.dart';
import 'package:response_dashboard/widgets/Tiitle_Text_Field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              // التيكست فيلد زي الليست تايل من الويدجتس الي  محتاجه تاكسباند ف باتالي انت جوا رو والاتنين جنب بعض ف محتاج لكل واحده مساحه
              child: TitleTextField(
                text: 'Customer name',
                hint: 'Type Customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                text: 'Customer Email',
                hint: 'Type Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              // التيكست فيلد زي الليست تايل من الويدجتس الي  محتاجه تاكسباند ف باتالي انت جوا رو والاتنين جنب بعض ف محتاج لكل واحده مساحه
              child: TitleTextField(
                text: 'Item name',
                hint: 'Type item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                text: 'Item amount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4db7f2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                text: 'Send Money',
              ),
            ),
          ],
        )
      ],
    );
  }
}
