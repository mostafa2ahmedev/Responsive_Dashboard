import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';
import 'package:response_dashboard/widgets/Transaction_Hearder_History.dart';
import 'package:response_dashboard/widgets/Transaction_History_ListView.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHearderHistory(),
        const SizedBox(
          height: 20,
        ),
        Text('13 April 2022', style: AppSytles.styleMeduim16(context)),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
