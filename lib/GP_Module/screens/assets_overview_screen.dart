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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 130,
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
              border: Border.all(),
            ),
            unselectedLabelColor: Colors.black,
            dividerHeight: 0,
            tabs: <Widget>[
              Tab(
                text: 'Pumps',
              ),
              Tab(
                text: 'Pipelines',
              ),
              Tab(
                text: 'Pumps',
              ),
              Tab(
                text: 'See More',
              ),
            ],
          ),
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
        body: TabBarView(children: <Widget>[
          ListWidget(
            txt1: 'Pumpu ID: xxxx',
            txt2: 'Installation Date: xx-xx-xxxx',
          ),
          ListWidget(
            txt1: 'PipeLine ID: xxxx',
            txt2: 'Installation Date: xx-xx-xxxx',
          ),
          ListWidget(
            txt1: 'Valve ID: xxxx',
            txt2: 'Installation Date: xx-xx-xxxx',
          ),
          ListWidget(
            txt1: 'Asset ID: xxxx',
            txt2: 'Installation Date: xx-xx-xxxx',
          ),
        ]),
      ),
    );
  }
}
