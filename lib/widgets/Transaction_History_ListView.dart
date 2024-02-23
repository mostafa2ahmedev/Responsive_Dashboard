import 'package:flutter/material.dart';
import 'package:response_dashboard/models/Transaction_Model.dart';
import 'package:response_dashboard/widgets/TransactionItem.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawl',
        date: '13 April 2022',
        amount: r'$20.99',
        withDrawl: true),
    TransactionModel(
        title: 'Cash Withdrawl',
        date: '13 April 2022',
        amount: r'$20.99',
        withDrawl: false),
    TransactionModel(
        title: 'Cash Withdrawl',
        date: '13 April 2022',
        amount: r'$20.99',
        withDrawl: false),
  ];

  @override
  Widget build(BuildContext context) {
    // لما نستخدم ليست فيو بشرنت ب ترو جوا كاستم سكرول فيو هيعمل مشكله
    // وسبب المشكله دي بسيط  وهي ان الكاستم سكرول فيو ليزي بيلدر  فانت المفروض عندي الويدجتس الداخليه هتتبني بشكل ليزي
    //خصوصا اني رحت عليث السليفر فيل ريمننج كمان  وقلتلك اني عندي السكرولابل بادي فولس  ف بالتالي هي جزء من الكاستم سكرول فيو
    //   لكن الليست فيو بالشرنك راب دي هتبني الليست كلها مره واحده قبل ما يتعرضو علي الشاشه ف دا  هيتناقض مع الويدجت الي انت حاططها الكاستم سكرول فيو
    //  وعشان كدا محتاج الغي استخدم الليست هنا   وعفكره حاجه زي دي المفروض تثبت معاك
    // وهي  انك لو هتستخدم ليست فيو عشان تعرض مجحموعه من الايتم والشرنك راب ب ترو  ف يفضل انك تلجا ل كولم  ودا هيكون حل افضل لان يعتبر مفيش فرق  ما بين الكولم
    //  و الليست فيو     عشان كدا المفروض  منستخدمش ليست فيو طالما هتبقي مجموعه من الايتمز  معمول لهم شرنك راي ب ترو

    return Column(
      children: List.generate(
        items.length,
        (index) => TransactionItem(transactionModel: items[index]),
      ),
    );

    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
