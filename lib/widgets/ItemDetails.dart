import 'package:flutter/material.dart';
import 'package:response_dashboard/models/ItemDetailsModel.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetails});
  final ItemDetailsModel itemDetails;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemDetails.title,
        style: AppSytles.styleRegular16,
      ),
      trailing: Text(
        itemDetails.value,
        style: AppSytles.styleMeduim16,
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: itemDetails.color,
        ),
      ),
    );
  }
}
