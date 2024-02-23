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
                          // المشكله الي هنا بتقول ان الهايت بتاعي الي محتاجه اكبر من الهايت الي متاح
                          // السلفر فيل ريمننج هي ويدجت جوا السكرول فيو والهايت بتاعها هوا الهايت بتاع الشاشه  ف  من الاخر لو
                          // فيه ويدجت جواها الهايت بتاعها  عدي الهايت الشاشه هيحصل مشكله
                          // والكلام دا هيحصل  ف اسكشن الاخير  هتلاقي السكشن دا واخد ارتفاع الشاشه واكتر
                          // والويدجت الي فوق بتحدد الهايت بتاعها بناء علي الايتم الي موجوده والي تليها  بتاخد المساحه المتبقيه من الهايت
                          // ودا الي بيعمل امشكله هنا فعلا  لان انا عندي الانكم سكشن  بتاخد فيكسد هايت  لان علي الاغلب الهايت بتاع الي فوق مش بيتغير
                          // وطبعا دا بيعمل مشكله وهي ان الايتم الهايت الي محتاجاه اكبرمن الهايت الي متاح  حاليا
                          // طب انا عايز اعرف ليه في مشكله حصلت ف الهايت اساسا والمشكله اصلا جت من ناحيه الليست تايل
                          // يعني المشكهل الاساسيه هي مشكله ويدث اصلا لان لما الويدث بتاع الليست تايل قل معايا التيسكت خد سطرين
                          // ف لما خد المكانين الهايت بتاع الايتم  بقا اكبر من المتاح ليا
                          // ولو غيرت الفلكس بتاعهم هتلاحظ ان المشكله اتحلت بشكل مؤقت لان الليست تايل خد لاين واححد وبالتالي الهايت التوتال بتاع الايتم
                          // بقا اقل او يساوي من الهايت المتاح ف معملش مشكله

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
