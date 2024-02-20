import 'package:flutter/material.dart';
import 'package:response_dashboard/models/Transaction_Model.dart';
import 'package:response_dashboard/widgets/TransactionItem.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawl',
        date: '13 April 2022',
        amount: r'$20.99',
        withDrawl: true),
    TransactionModel(
        title: 'Cash Withdrawl',
        date: '13 April 2022',
        amount: r'$20.99',
        withDrawl: false),
    TransactionModel(
        title: 'Cash Withdrawl',
        date: '13 April 2022',
        amount: r'$20.99',
        withDrawl: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
