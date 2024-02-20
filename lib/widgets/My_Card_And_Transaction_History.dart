import 'package:flutter/material.dart';
import 'package:response_dashboard/widgets/Custom_Background_Container.dart';
import 'package:response_dashboard/widgets/My_Cards_Section.dart';
import 'package:response_dashboard/widgets/Transaction_History.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xfff1f1f1),
          ),
          TransactionHistory()
        ],
      ),
    );
  }
}
