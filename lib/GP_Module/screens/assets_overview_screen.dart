import 'package:flutter/material.dart';
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
          toolbarHeight: 130,
          backgroundColor: Colors.white,
          // bottom: TabBar(
          //   labelColor: Colors.white,
          //   indicatorPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //   indicatorSize: TabBarIndicatorSize.tab,
          //   indicator: BoxDecoration(
          //     borderRadius: BorderRadius.circular(16),
          //     color: Colors.blue,
          //     border: Border.all(),
          //   ),
          //   unselectedLabelColor: Colors.black,
          //   dividerHeight: 0,
          //   tabs: <Widget>[
          //     Tab(
          //       text: 'Pumps',
          //     ),
          //     Tab(
          //       text: 'Pipelines',
          //     ),
          //     Tab(
          //       text: 'Valves',
          //     ),
          //     Tab(
          //       text: 'See More',
          //     ),
          //   ],
          // ),
          flexibleSpace: SafeArea(
            child: FlexibleSpaceBar(
              title: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/water_tap.png'))),
                          ),
                          SizedBox(width: 16),
                          SizedBox(
                            width: 180,
                            child: Text(
                              'Assets Overview',
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
                ],
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
              height: 16,
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
