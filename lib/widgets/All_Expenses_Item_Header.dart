import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isSelected});
  final String image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // هنا المشكله لان الويدث بيقل بتاع الشاشه وانا مدي للكونتير فيكسد هايت
                // ف ممكن احل المشكله دي عن طريق اني اخليها فلكسابل  وركز فلكسابل مش اكسباندد
                // لان اكسباندد  معني كدا طول  ما فيه مساحه هتزيد معاك ف انت ممكن ترن الكود  دا علي تاب مثلا ف هيبوظ
                // لكن الفلكسابل لو مفيش مساحه هتصغر الويدجت ولو فيه هتكبر لحد ما تاخد السايز المحدد لو موجود
                // ولو اكتفيت ب كدا هتلاقي برده فيه مشكله ع الموبايل ليه ؟ لان لما الويدث قل هوا قلل الويدث عادي بتاع الكونتينر
                // ولكن الهايت لسه ف الاسبكت راشيو اتدمر ف هحل الموضوع دا عن طريق اني احط اسبكت راشيو واخليه ب 1
                // ف اضمن انها هتبقي علي شكل سيركل دايما ف دي هتتحل  معاك ولكن هتظر مشكله ان الايتم مش ظاهره  لكن الطبيعي تظهر
                // لانها س ف ج   ولكن المشكله هتلاقيها ف ان الكونتينر عامله بادنج وقولتلك ان لباندنج دا جزء من الويدجت
                //  ف هنشيل البادندج ولكن كان مهم عشان الصوره  تظهر  بالابعاد الديفولت بتاعتها لان لو فيه مساحه الصوره هتكبر
                // ومينفعش احط بادنج عشان الاحجام الصغير ه ف هحل الموضو ع  دا باسنتر ويدجت
                // بس هيظهر مشكله تانيه ودا لان الكونتينر الويدث بتاع والهايت ملهمش لازم لان الاسبكت راشو الي بتحدد الابعاد
                // والاسبكت بتاخد الكونسترينت بتاعتها من الفلكس ف بالتالي مفيش حاجه تقولك انت اكبر حجم ليك هيكون ايه
                // ف الاسبكت بتضمن ان الككونتينر يبقفي دائري  والفلكس بتقول انك هتقل  لو مفيش ويدث لكن برده هتزيد لو فيه مشاحه
                // ف بالتالي  مفيش كونسترينت تقولك اكبر ويدث كام  يعني انت معندكش ويدث او هايت محدد  ف الاسبكت راشيو تحدد عليهم
// ف هحدد قيد علي الاسبكت ان فيه ويدث مينفعش تتخطيه
                //
                //
                width: 60, //
                height: 60,
                decoration: ShapeDecoration(
                  color: isSelected == true
                      ? Colors.white.withOpacity(0.1)
                      : Colors.white,
                  shape: const OvalBorder(),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      isSelected == true
                          ? Colors.white
                          : const Color(0xff4e87f2),
                      BlendMode.srcIn),
                )), // الsvg ف الاغلب بتطلع بالديفولت سايز بتاعها الي موجود ف الديزاين اساسا ف لما تحطها جوا سنتر هتتظبط
                // ولكن هي كانت زادت ف الحجم عشان تملي الهيات والويدث بتاع الكونتينر  عشان دي كونسترينت متطبقه عليها لكن ف الاغلب الصور السفج بتلع بنفس السايز الي ع الديزاين
              ),
            ),
          ),
        ),
        const Spacer(),
        // مينفعش استخدم السبيسر جوا رو ملهوش ويدث محدد
        Transform.rotate(
          angle: -pi,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: isSelected == true ? Colors.white : const Color(0xff064061),
          ),
        )
      ],
    );
  }
}
