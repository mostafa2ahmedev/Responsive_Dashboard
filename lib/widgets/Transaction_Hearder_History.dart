import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class TransactionHearderHistory extends StatelessWidget {
  const TransactionHearderHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppSytles.styleSemiBold20,
        ),
        Text(
          'See all',
          style: AppSytles.styleMeduim16.copyWith(
            color: const Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}
