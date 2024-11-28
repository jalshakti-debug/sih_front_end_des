import 'package:flutter/material.dart';
import 'package:sih_ui_des/list_widget.dart';

class PhedAssetInfoScreen extends StatefulWidget {
  const PhedAssetInfoScreen({super.key});

  @override
  State<PhedAssetInfoScreen> createState() => _PhedAssetInfoScreenState();
}

class _PhedAssetInfoScreenState extends State<PhedAssetInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: screenSize * 0.125,
        flexibleSpace: SafeArea(
          child: FlexibleSpaceBar(
            title: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 16),
                    SizedBox(
                      width: screenSize * 0.25,
                      child: Text(
                        'Inventory Info',
                        softWrap: true,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              height: screenSize * 0.045,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(width: 0.5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Text(
                        'Pumps',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                child: ListWidget(
                    txt1: 'Pump Id: xxxxxxx',
                    txt2: 'Installation Date: xx-xx-xxxx'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
