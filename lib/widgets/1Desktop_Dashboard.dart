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

                          // الحل التاني الي هوا عندي لو الليست فيو وصل لمرحله انه هيعمل مشكله علطول هغير شكل الانترفيس
                          // وخد بالك هيبقي عندي هنا 2 كوندنش يتحكمو ف الموضوع دا   وهما البريك بوينت والبلاتفورم بتاعتي
                          // لان ف التابليت الشكل كويس جوا وكمان الموبايل
                          // عشان اطبق الحل دا عندي الانكم ديتيلز هيختفي بالكامل  والانكم تشارت هتتغير شويه عن الشكل الطبيعي بتاعها
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
