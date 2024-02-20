import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:response_dashboard/utils/App_Images.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});
// انا مهتم هنا بابعاد الكارد الداخليه ليه ؟ لان  انا الكارد الي قدامي دي لها اسبكت راشيو يعني نسبه بين الطول والعرض
//  لو عايز اعرف اجيب النسبه دي بالظبط ف ابسط طريقه اجيب الويدث والهايت بتاع الايتم واقسم الاتنين علي بعض وانا عايز اعمل كدا ليه ؟
// لان لو بصيت ع الكارد  ف انا مش هستخدم ويدث محدد عشان اعرض الكونتينر دي ودا كلام منطقي  لانك عندك 3 اجزاء ف الداشبورد وال3 بياكسباندو
// ف لو تلاحظ هتلاقي الكارد واخده مساحه الكونتينر الي برا مع شويه بادنج ف المفروض لو عايز اليوزر انترفيس يبقي ريسبونسف

//  ف لو زاد الويدث بتاع السكشن دا شويه الكارد كمان تزيد شويه مع ان هي كمان تحافظ علي الاسبكت راشيو بتاعها ف لو اديت فيكسد هايت وفيكسد ويدث ف الكونتينر مش هتكون ريسبونس

  //  ف بعض الاوقات هتلاحظ ان البادنج بقا زياده ودا كمان ممكن يعملك مشكله مع الشكل بالنسبه للي تحت
  // ف انا مهتم ان الويدث بتاع الايتم بتاعتي تكون دايما نفس الويدث بتاع الكونتينر الكبيره مع البادنج ف معني كدا ان الويدث هيكون ريسبونسف
  // وكدا انت مش مضطر تديها ويدث لانك مجرد ما تخليها تاكسباند ف هي هتاكسباند وتاد الويدث المتاح مع البادنج يبقي الويدث هيتظبط تلقائي
  // لكن هيبقي عندك مشكله ف الهايت مينفعش فيكسد لان لو اديت فيكسد هايت لو الويدث زاد شويه الاسبكت راشيو هتبوظ ف الحل استخدم اسبكت راشيو ويدجت ف هي هتضمن
  // ان دايما الايتم الي قدامك هتاخد الابعاد الي عايزها ومعنديش مشكله بقا الويدث يزيد او يقل
  //

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 /
          215, // كدا انا محددتش قيم ثابته لابعاد الكونتينر  ف انا واثق انها هتكون ريس وهتتغير حسب الديفايس
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(Assets.imagesMask), fit: BoxFit.fill),
          color: const Color(0xff4eb7f2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // الصح لما تيجي تبني الكارد بتقسمه لجزئين  جزء يبعد من الاعلي وجزء يبعد من الاسفل وتشتغلها كدا
            // ومتقولش هحط سايز بوكس بعد الجزء الاول وكدا ليه ؟ ف المفروض الثابت بتاعي انه بيبعد من فوق وجزء بيبعد من تحت

            // مش المفروض يكون عندي سايز بوكس ف النص لا لان  المسافه الي ف النص ممكن تختلف لو الكارد زادت مثلا ف السايز ف بالتالي الهايت هيزيد ف المفروض البعد يزيد الي ف النص
            // ف بالتالي قيمه زي دي مينفعش تكون ثابته
            // طب هنعمل الكلام دا ازاي ؟خلي بالك بالفعل عندك الكولم بياكسباند والدليل ع كدا  ان الليست تايل معملش مشكله لانه لو مكانش بياكسباند كان هيديك ايرور
            //
            Padding(
              padding: const EdgeInsets.only(left: 31, right: 42, top: 16),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Name card',
                  style: AppSytles.styleRegular16.copyWith(color: Colors.white),
                ),
                subtitle: const Text(
                  'Ali Fayyad',
                  style: AppSytles.styleMeduim20,
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '1232 1232 5454 6445',
                    style:
                        AppSytles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    '12 / 20 - 134',
                    style:
                        AppSytles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 54 - 28,
            ),
          ],
        ),
      ),
    );
  }
}
