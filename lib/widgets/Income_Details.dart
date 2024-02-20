import 'package:flutter/material.dart';
import 'package:response_dashboard/models/ItemDetailsModel.dart';
import 'package:response_dashboard/utils/App_Styles.dart';
import 'package:response_dashboard/widgets/ItemDetails.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0xff208bc7), title: 'Design Service', value: '%40'),
    ItemDetailsModel(
        color: Color(0xff208bc7), title: 'Design Product  ', value: '%25'),
    ItemDetailsModel(
        color: Color(0xff208bc7), title: 'Design royalti', value: '%20'),
    ItemDetailsModel(color: Color(0xff208bc7), title: 'other', value: '%15'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetails: items[index]);
      },
    );
  }
}
