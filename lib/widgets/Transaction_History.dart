import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';
import 'package:response_dashboard/widgets/Transaction_Hearder_History.dart';
import 'package:response_dashboard/widgets/Transaction_History_ListView.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHearderHistory(),
        SizedBox(
          height: 20,
        ),
        Text('13 April 2022', style: AppSytles.styleMeduim16),
        SizedBox(
          height: 16,
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
