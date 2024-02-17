import 'package:flutter/material.dart';
import 'package:response_dashboard/models/all_expenses_item_model.dart';
import 'package:response_dashboard/utils/App_Images.dart';
import 'package:response_dashboard/widgets/All_ExpensesHeader.dart';
import 'package:response_dashboard/widgets/All_Expenses_Item.dart';
import 'package:response_dashboard/widgets/Custom_Background_Container.dart';
import 'package:response_dashboard/widgets/all_expenses_item_list.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemList(),
        ],
      ),
    );
  }
}
