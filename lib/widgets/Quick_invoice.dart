import 'package:flutter/material.dart';
import 'package:response_dashboard/widgets/Custom_Background_Container.dart';
import 'package:response_dashboard/widgets/Latest_Transaction.dart';
import 'package:response_dashboard/widgets/Quick_Invoice_Form.dart';
import 'package:response_dashboard/widgets/Quick_invoice_Header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaciton(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
