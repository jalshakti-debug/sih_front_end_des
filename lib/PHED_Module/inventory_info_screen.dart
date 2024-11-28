import 'package:flutter/material.dart';

import '../list_widget.dart';

class PhedInventoryInfoScreen extends StatefulWidget {
  const PhedInventoryInfoScreen({super.key});

  @override
  State<PhedInventoryInfoScreen> createState() =>
      _PhedInventoryInfoScreenState();
}

class _PhedInventoryInfoScreenState extends State<PhedInventoryInfoScreen> {
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
                itemCount: 4,
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
                        'Chemicals',
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
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.all(8),
                  color: Colors.blue[100],
                  child: Card(
                    margin: EdgeInsets.all(16),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Container(
                              height: screenSize * 0.08,
                              child: ElevatedButton(
                                onPressed: () => null,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(210, 227, 242, 250),
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.inventory,
                                            size: screenSize * 0.055,
                                          ),
                                        ),
                                        Text('Hydrochloric Acid')
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Remaining - XX l'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
