import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';
import 'package:response_dashboard/widgets/Custom_Drop_Button.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppSytles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        CustomDropButton()
      ],
    );
  }
}
