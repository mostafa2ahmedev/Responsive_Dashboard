import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:response_dashboard/widgets/AllExpensesAndQuickInvoice.dart';

import 'package:response_dashboard/widgets/Custom_Drawer.dart';
import 'package:response_dashboard/widgets/Income_Section.dart';

import 'package:response_dashboard/widgets/My_Card_And_Transaction_History.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          // عشان اكسباندد جوا رو  يبقي لازم الرو نفسه ياكسباند
          // تقريبا عشان لما حطينا رو جوا رو ف كدا انا محتاج اخلي الرو التاني دا ياخد المساحه الباقيه كلها عشان بعد كدا اقدر اقسمها باكسباندد جوا تاني
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  // عشان نعمل دا كله بيسكرول ممكن طبعا نحط سنجل تشايلد سكرول فيو بس دا مش هينفع معاه تستخدم الاكسباندد او ينفع بس هضطر تظبط
                  // حاجات كتير ف ممكن نستعمل الكاستم سكرول فيو وخلاص
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyCardAndTransactionHistorySection(),
                          SizedBox(
                            height: 24,
                          ),
                          // اول حاجه انا مهتم اني احدد اللقيمه الي عندها الهايت بيضرب ف محتااج احدد الويدث عند نقطه البوظان الي عايز احلها
                          // وخد بالك مينفعش مثلا تجيلي علي الليست فيو وتحخطها حوالين فيتد بوكس ليه ؟ لان الليست فيو لها بيهافيو انها باتكسباند علي المساحه
                          // المحدد وكمان بتلاقي المسافه بتزيد وتقل ما بين الايتمز الي جوا  علي حسب الويدث بتعها ف  مش هينفع اصلا تستخدم فيتد بوكس
// مع الويدجتس الي فيها اكسباند او سبيسر
// ف ممكن نغير شكل الانترفيس لما اوصل عند نقطه معينه  ابتدي واعرض حاجه مختلفه
// ف ممكن مثلا  اغير من طبيعه الايتم بدل ما كانت ليست تايل مثلا اخليها رو واحط الرو  جوا فيتد بوكس  وممكن اطبق حل تاني  زي اني استغني عن الويدجت دي اصلا واحاول
// استخدم التشارت ف اني اعرض البيانات علي التشارت
                          Expanded(
                            child: IncomeSection(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
