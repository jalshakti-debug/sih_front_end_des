import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sih_ui_des/GP_Module/screens/add_new_receipt_screen.dart';

import '../../common_widgets/global_backgroung.dart';
import '../../common_widgets/layout_builder_common.dart';

class GpRecieptsScreen extends StatefulWidget {
  const GpRecieptsScreen({super.key});

  @override
  State<GpRecieptsScreen> createState() => _GpRecieptsScreenState();
}

class _GpRecieptsScreenState extends State<GpRecieptsScreen> {
   @override
  Widget build(BuildContext context) {
    return LayoutBuilderCommon(
      mobileDesign: GlobalBackground(child: mobileDesign()),
    );
  }
  Widget mobileDesign() {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Submit Receipts to PHED',
          softWrap: true,
          maxLines: 2,
          style: GoogleFonts.getFont(
            'Urbanist',
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              'Tap on Transaction to view receipts',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return RecieptItem(
                      transcTitle: 'Transaction Title',
                      transcDesc:
                          'Transaction Desc example description money used for something',
                      transcDate: 'xx-xx-xxxx',
                      transcTime: 'XX:XX',
                      transcAmount: 00000,
                      currentBal: 000000000,
                      transcType: 'credit',
                      screenSize: screenSize);
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      (MaterialPageRoute(
                          builder: (context) => GpAddNewReceiptScreen())));
                },
                child: Text('Add new Reciept'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecieptItem extends StatelessWidget {
  final String transcTitle;
  final String transcDesc;
  final String transcDate;
  final String transcTime;
  final int transcAmount;
  final int currentBal;
  final String transcType;
  const RecieptItem({
    super.key,
    required this.transcTitle,
    required this.transcDesc,
    required this.transcDate,
    required this.transcTime,
    required this.transcAmount,
    required this.currentBal,
    required this.transcType,
    required this.screenSize,
  });

  final double screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue[100],
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (transcType == 'debit')
              ? Image.asset(
                  'assets/images/money_debit.png',
                  height: screenSize * 0.08,
                )
              : Image.asset(
                  'assets/images/money_credit.png',
                  height: screenSize * 0.08,
                ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transcTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  transcDesc,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                (transcType == 'debit')
                    ? '- Rs. $transcAmount'
                    : '+ Rs. $transcAmount',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: (transcType == 'debit') ? Colors.red : Colors.green,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Rs. ' + currentBal.toString(),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                transcDate,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
              Text(
                transcTime,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
