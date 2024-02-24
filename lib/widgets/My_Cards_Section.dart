import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';
import 'package:response_dashboard/widgets/Dots_Indicator.dart';
import 'package:response_dashboard/widgets/My_Cards_Page_View.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

late PageController pageController;
int currectPage = 0;

class _MyCardSectionState extends State<MyCardSection> {
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currectPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppSytles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController:
              pageController, // انا استخدمت الكنتورلر عشان اربط الاتنين ببعض   بشغل الكونترولر مع البيدج فيو عشان لما تتغير  يحصل ليسن ع التغير ف اابديت  الكارنت بيدج اندك
          // واعمل ريبلد للانترفيس
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPage: currectPage,
        ),
      ],
    );
  }
}
