import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';
import 'package:response_dashboard/widgets/Custom_Background_Container.dart';
import 'package:response_dashboard/widgets/Quick_invoice_Header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
        ],
      ),
    );
  }
}
