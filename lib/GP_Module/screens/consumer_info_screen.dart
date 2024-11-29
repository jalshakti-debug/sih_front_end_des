import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../info_field_tile.dart';

class GpConsumerInfoScreen extends StatefulWidget {
  const GpConsumerInfoScreen({super.key});

  @override
  State<GpConsumerInfoScreen> createState() => _GpConsumerInfoScreenState();
}

class _GpConsumerInfoScreenState extends State<GpConsumerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            '<Consumer Name>',
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
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: screenSize*0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Card(
                color: Color.fromARGB(255, 226, 235, 255),
                elevation: 4,
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
                      value:'XXXXX X, XXXXX XXXXXXXXxx XXXXXXXXXXXxxx XXXXXXX XXXXX',
                    ),
                  ],
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
                  padding: EdgeInsets.symmetric(horizontal: screenSize*0.01),
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
