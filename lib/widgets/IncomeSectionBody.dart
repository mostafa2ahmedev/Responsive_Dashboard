import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/SizeConfig.dart';
import 'package:response_dashboard/widgets/Custom_Chart.dart';
import 'package:response_dashboard/widgets/Details_Income_Chart.dart';
import 'package:response_dashboard/widgets/Income_Details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width < 1750 && width >= SizeConfig.desktopBreak
        ? const Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                // عايزه سايز محدد ف عملنا اكسباند ودي ابسط طريقه عشان تديها سايز محدد  وطبعا عشان دي تاسكباند لازم الرو كله ياكسباند
                child: CustomChart(),
              ),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
