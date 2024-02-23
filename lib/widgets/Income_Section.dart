import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:response_dashboard/widgets/Custom_Background_Container.dart';
import 'package:response_dashboard/widgets/Custom_Chart.dart';
import 'package:response_dashboard/widgets/IncomeSectionBody.dart';
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
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
