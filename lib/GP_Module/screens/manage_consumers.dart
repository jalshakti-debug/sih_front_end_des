import 'package:flutter/material.dart';

import '../../list_widget.dart';

class GpManageConsumers extends StatefulWidget {
  const GpManageConsumers({super.key});

  @override
  State<GpManageConsumers> createState() => _GpManageConsumersState();
}

class _GpManageConsumersState extends State<GpManageConsumers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                text: 'Households',
              ),
              Tab(
                text: 'Schools',
              ),
              Tab(
                text: 'AWCs',
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
                                        'assets/images/user.png'))),
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
            txt1: 'Name: xxxx xxxx',
            txt2: 'Consumer ID: xxxxxx',
          ),
          ListWidget(
            txt1: 'School Name: xxxxx xxxxx xxxx',
            txt2: 'Consumer ID: xxxxxx',
          ),
          ListWidget(
            txt1: 'AWC Code: xxxxxxxxx',
            txt2: 'Consumer ID: xxxxxx',
          ),
        ]),
      ),
    );
  }
}
