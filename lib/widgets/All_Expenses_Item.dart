import 'package:flutter/material.dart';
import 'package:response_dashboard/models/all_expenses_item_model.dart';
import 'package:response_dashboard/utils/App_Styles.dart';
import 'package:response_dashboard/widgets/All_Expenses_Item_Header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesModel, required this.isSelected});
  final AllExpensesModel allExpensesModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: isSelected == true ? const Color(0xff4db7f2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
              image: allExpensesModel.image, isSelected: isSelected),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesModel.title,
            style: isSelected == true
                ? AppSytles.styleMeduim16(context).copyWith(color: Colors.white)
                : AppSytles.styleMeduim16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesModel.date,
            style: isSelected == true
                ? AppSytles.styleRegular14(context)
                    .copyWith(color: const Color(0xffFAFAFA))
                : AppSytles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesModel.price,
            style: isSelected == true
                ? AppSytles.styleSemiBold24(context)
                    .copyWith(color: Colors.white)
                : AppSytles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
