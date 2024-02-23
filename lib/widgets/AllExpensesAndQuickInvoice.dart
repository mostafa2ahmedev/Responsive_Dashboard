import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:response_dashboard/widgets/All_Expneses.dart';
import 'package:response_dashboard/widgets/Quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice()
      ],
    );
  }
}
