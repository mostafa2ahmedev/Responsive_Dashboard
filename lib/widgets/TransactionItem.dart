import 'package:flutter/material.dart';
import 'package:response_dashboard/models/Transaction_Model.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppSytles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppSytles.styleRegular16(context)
              .copyWith(color: const Color(0XFFaaaaaa)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppSytles.styleSemiBold20(context).copyWith(
              color: transactionModel.withDrawl ? Colors.red : Colors.green),
        ),
      ),
    );
  }
}
