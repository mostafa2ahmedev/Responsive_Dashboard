import 'package:flutter/material.dart';
import 'package:response_dashboard/models/all_expenses_item_model.dart';
import 'package:response_dashboard/utils/App_Images.dart';
import 'package:response_dashboard/widgets/All_Expenses_Item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  List<AllExpensesModel> items = [
    const AllExpensesModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2020',
        price: '\$20.99'),
    const AllExpensesModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2020',
        price: '\$20.99'),
    const AllExpensesModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2020',
        price: '\$20.99')
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // الرو مش محتاجه فيكسد هايت ولكن هي بتظبط الهايت بتاعها بناء علي التشيلدرن بتوعها
      children: List.generate(
        items.length,
        (index) => Expanded(
          child: Padding(
            padding: index == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedItem = index;
                });
              },
              child: AllExpensesItem(
                isSelected: selectedItem == index,
                allExpensesModel: items[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//   return ListView.builder(
//       // الليست فيو الهورزنتال جوا الكولم محتاج طبعا تحدد لها المساحه الي هتشتغل فيها الي هوا الهايت بتاعها
//       scrollDirection: Axis.horizontal,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return AllExpensesItem(
//           allExpensesModel: items[index],
//         );
//         // الاكسباندد بتكون جوا الرو او الكولم بس  ومش هيكون لها تاثير جوا الليست فيو
//         // ف بالتالي استخدامنا لليست فيو هنا  مش هعرف ليه .؟ لانه  عندي كذا مشكله من ضمنها بتاعت السبيسر دي
//         // ومحتاج الويدجت الداخليه تاكسباند بحيث الويدث بتاع ال الويدجت الكبيره يتوزع علي الايتمز ف انا محتاج كل ايتم داخليه تاكسباند معايا
//         // ودا الليست فيو الهورزنتال مش هتديهولكف بالتالي مش هتعرف تستخدمها وتوزع الويدث علي الايتم الداخليه

//         // والنقطه التانيه اني محتاج ادي هايت لليست فيو  ومينفعش اعمل الكلام دا هنا لان  مقدرش بشكل مباشر احدد الهايت بتاع الكونتينر ف كدا نا مجبر  ف دا ممكن يعمل مشكله
//       },
//     );

//   الليست الهوريزنتال لها وقت كويس  وهوا ان لو عندك محموعه من التشيلدن كتير متوزعين ع الهوريزنتال اكسس  ف البتالي دا حل مثالي لها 
// لكن لو كان  عندك مجموعه من التشيلدرن مترتبين جنب بعض  وكلهم عندهم  نفس الوديث  او الويدث الرئيسي بيتوزع عليهم بالتساوي  يعني علي الاغلب الويدجت بتاكسباند اصلا

// ف بالتالي افضل  حل  ف المكان دا هوا الرو خصوصا لو مكانش عندك هايت محدد  للويدجت بتاعتك  ف افضل حل نستخدم رو  ويدجت  ومستخدمش ليست فيو 
//
//
//