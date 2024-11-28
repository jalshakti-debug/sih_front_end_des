import 'package:flutter/material.dart';

import '../../list_widget.dart';

class GpManageConsumers extends StatefulWidget {
  const GpManageConsumers({super.key});

  @override
  State<GpManageConsumers> createState() => _GpManageConsumersState();
}

class _GpManageConsumersState extends State<GpManageConsumers> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: screenSize * 0.125,
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
        //       text: 'Households',
        //     ),
        //     Tab(
        //       text: 'Schools',
        //     ),
        //     Tab(
        //       text: 'AWCs',
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
                    SizedBox(width: 16),
                    SizedBox(
                      width: screenSize*0.25,
                      child: Text(
                        'Manage Consumers',
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
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.all(10.0),
                hintText: 'Search Here',
                filled: true,
                fillColor: const Color.fromARGB(255, 247, 252, 255),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        const BorderSide(width: 1, color: Colors.black)),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Active Consumer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
            Container(
              height: screenSize * 0.045,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(width: 0.5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                      child: Text('Household', textAlign: TextAlign.center,),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16,),
            Expanded(
              child: Container(
                child: ListWidget(txt1: 'Name: xxxxxxx', txt2: 'Consumer ID xxxx xxxx')),
            ),
          ],
        ),
      ),
      // TabBarView(
      //   children: <Widget>[
      //     ListWidget(
      //       txt1: 'Name: xxxx xxxx',
      //       txt2: 'Consumer ID: xxxxxx',
      //     ),
      //     ListWidget(
      //       txt1: 'School Name: xxxxx xxxxx xxxx',
      //       txt2: 'Consumer ID: xxxxxx',
      //     ),
      //     ListWidget(
      //       txt1: 'AWC Code: xxxxxxxxx',
      //       txt2: 'Consumer ID: xxxxxx',
      //     ),
      //   ],
      // ),
    );
  }
}
