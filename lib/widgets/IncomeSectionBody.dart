import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/SizeConfig.dart';
import 'package:response_dashboard/widgets/Custom_Chart.dart';
import 'package:response_dashboard/widgets/Income_Details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    // الميديا دي السبب الرئيسي ان يتعمل بيلدر للانترفيس بتاعك يعني بتسمح نريبلد الانترفيس لما يحصل تغيير  ف الوديث بتاعك ان ريل تايم
    // والموضوع دا مهم ف الويب لانك ممكن تكبر وتصغر
    // ف الموبايل مش مهمه لانك لو عملت مثلا ع موبايل بيلد ملهاش علاقه بالتاب والتاب نفس الحوار لكن الويب ممكن يكبر ويصغر
    // ف ف الحالات الي زي دي محتاج الميديا كويسي تكون مستخدمه مش السايز كونفج
    // ف ممكن منحطش حاجه زي الميديا دي ف الكلاس هناك  الا لو هستخدمهم ف عمليات تانيه جوا السايز كونفج
    return width < 1750 && width >= SizeConfig.desktopBreak
        ? const SizedBox()
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
