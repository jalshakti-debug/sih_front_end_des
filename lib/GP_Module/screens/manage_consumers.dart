import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sih_ui_des/GP_Module/screens/consumer_info_screen.dart';

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
        backgroundColor: Colors.transparent,
        title: Text(
          'Manage Consumers',
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
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
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Active Consumer',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )),
            Container(
              height: screenSize * 0.05,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      child: Text(
                        'Household',
                        style: TextStyle(fontSize: screenSize * 0.015),
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
                  txt1: 'Name: xxxxxxx',
                  txt2: 'Consumer ID xxxx xxxx',
                  ontap: GpConsumerInfoScreen(),
                ),
              ),
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
