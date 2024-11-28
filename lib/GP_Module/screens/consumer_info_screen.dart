import 'package:flutter/material.dart';

import '../../info_field_tile.dart';

class GpConsumerInfoScreem extends StatefulWidget {
  const GpConsumerInfoScreem({super.key});

  @override
  State<GpConsumerInfoScreem> createState() => _GpConsumerInfoScreemState();
}

class _GpConsumerInfoScreemState extends State<GpConsumerInfoScreem> {
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
                        'Consumer Information',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                color: Color.fromARGB(255, 226, 235, 255),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0, vertical: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      info_field_tile(
                        label: 'Consumer Name',
                        value: 'Pankaj Kumar',
                      ),
                      info_field_tile(
                        label: 'Consumer Id',
                        value: '101034',
                      ),
                      info_field_tile(
                        label: 'Mobile Number',
                        value: '+91 9637418520',
                      ),
                      info_field_tile(
                        label: 'Aadhar Id',
                        value: '5678 9671 1254',
                      ),
                      info_field_tile(
                        label: 'Address',
                        value:
                            'XXXX X, XXXXX XXXXXXXXxx XXXXXXXXXXXxxx XXXXXXX XXXXX',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 14),
                      elevation: 4,
                      backgroundColor: Color.fromARGB(255, 226, 235, 255),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Placeholder()),
                      );
                    },
                    icon: Icon(Icons.edit),
                    label: Text(
                      'Update Info',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 14),
                      elevation: 4,
                      backgroundColor: Color.fromARGB(255, 226, 235, 255),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Placeholder()),
                      );
                    },
                    icon: Icon(Icons.remove_red_eye),
                    label: Text(
                      'View Receipts',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
