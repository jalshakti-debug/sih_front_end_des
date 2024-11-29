import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sih_ui_des/list_widget.dart';

class GpAssetsOverviewScreen extends StatefulWidget {
  const GpAssetsOverviewScreen({super.key});

  @override
  State<GpAssetsOverviewScreen> createState() => _GpAssetsOverviewScreenState();
}

class _GpAssetsOverviewScreenState extends State<GpAssetsOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Asset Overview',
            softWrap: true,
            maxLines: 2,
            style: GoogleFonts.urbanist(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Container(
              height: screenSize * 0.045,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(width: 0.5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 6.0),
                      child: Text('Pump'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  child: ListWidget(
                      txt1: 'Pump ID: xxxxxx',
                      txt2: 'Installation Date: xx-xx-xxxx')),
            )
          ],
        )
        // TabBarView(
        //   children: <Widget>[
        //     ListWidget(
        //       txt1: 'Pumpu ID: xxxx',
        //       txt2: 'Installation Date: xx-xx-xxxx',
        //     ),
        //     ListWidget(
        //       txt1: 'PipeLine ID: xxxx',
        //       txt2: 'Installation Date: xx-xx-xxxx',
        //     ),
        //     ListWidget(
        //       txt1: 'Valve ID: xxxx',
        //       txt2: 'Installation Date: xx-xx-xxxx',
        //     ),
        //     ListWidget(
        //       txt1: 'Asset ID: xxxx',
        //       txt2: 'Installation Date: xx-xx-xxxx',
        //     ),
        //   ],
        // ),
        );
  }
}
