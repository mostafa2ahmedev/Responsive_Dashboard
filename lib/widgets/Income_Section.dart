import 'package:flutter/material.dart';
import 'package:response_dashboard/widgets/Custom_Background_Container.dart';
import 'package:response_dashboard/widgets/Custom_Chart.dart';
import 'package:response_dashboard/widgets/Income_Details.dart';
import 'package:response_dashboard/widgets/Income_Section_Header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // عايزه سايز محدد ف عملنا اكسباند ودي ابسك طريقه عشان تديها سايز محدد  وطبعا عشان دي تاسكباند لازم الرو كله ياكسباند
                  child: CustomChart(),
                ),
                Expanded(child: IncomeDetails())
              ],
            ),
          )
        ],
      ),
    );
  }
}
