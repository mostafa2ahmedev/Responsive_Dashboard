import 'package:flutter/material.dart';
import 'package:response_dashboard/widgets/AllExpensesAndQuickInvoice.dart';
import 'package:response_dashboard/widgets/Income_Section.dart';
import 'package:response_dashboard/widgets/My_Card_And_Transaction_History.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        // السنجل تشايلد بتخلي الكولم يشرنك وبالتالي مينفعش جواها اكسباند
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
