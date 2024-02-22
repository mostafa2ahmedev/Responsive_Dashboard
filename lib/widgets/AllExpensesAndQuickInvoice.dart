import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:response_dashboard/widgets/All_Expneses.dart';
import 'package:response_dashboard/widgets/Quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        // مش منطقي انك كل ما تلاقي اتنين كونتينر تحت او جنب بعض تخلي كل واحد ياكسباند وخلاص
        // لازم تبقي فاهم هل فعلا انا محتاج احط الاكسباند ولا لا   خصوصا لو بتتكلم علي المحور بتاع واي  لكن الافقي هتلاقي دايما بيستخدم الاكسباندد
        // لكن ف الراسي لاازم تكون حريص شويه ليه بقا ؟  الكونتينر ف الطبيقي البيهافيو الطبيعي انها  بتراب نفسها حول التشايلد بتاعها وحتي الهايت  ف لما تقول لكونتينر عايزك تاكسباند
        // ف  معني كدا انك متديهتاش  هايت ومحدد ولا هتراب نفسها حوالين التشايلد بتاعها ف فبعض الاوقات  لما  الهايت يزيد هتلاحظ ان فيه مشكله  حصلت وهي
        // ان هيبقي عندك فراغ كبير كدا من تحت
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice()
      ],
    );
  }
}
