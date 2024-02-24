import 'package:flutter/material.dart';
import 'package:response_dashboard/models/ItemDetailsModel.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetails});
  final ItemDetailsModel itemDetails;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: BoxDecoration(
    //             color: itemDetails.color,
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 12,
    //         ),
    //         Text(
    //           itemDetails.title,
    //           style: AppSytles.styleRegular16,
    //         ),
    //         const SizedBox(
    //           width: 24,
    //         ),
    //         Text(
    //           itemDetails.value,
    //           style: AppSytles.styleMeduim16,
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return ListTile(
      title: Text(
        itemDetails.title,
        style: AppSytles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetails.value,
        style: AppSytles.styleMeduim16(context),
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
