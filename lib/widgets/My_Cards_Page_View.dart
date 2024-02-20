import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:response_dashboard/widgets/My_Card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) => const MyCard()));
  }
}
// class MyCardPageView extends StatelessWidget {
//   const MyCardPageView({super.key});
//   // List<double> childrenHieght = [];
//   // int currentPage = 0;
//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       itemCount: 3,
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return const MyCard();
//       },
//     );
//   }
// }
