import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../list_widget.dart';

class GpViewComplaintsScreen extends StatefulWidget {
  const GpViewComplaintsScreen({super.key});

  @override
  State<GpViewComplaintsScreen> createState() => _GpViewComplaintsScreenState();
}

class _GpViewComplaintsScreenState extends State<GpViewComplaintsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Send Announcements',
          softWrap: true,
          maxLines: 2,
          style: GoogleFonts.getFont(
            'Urbanist',
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, ind) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.info_outline),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text('XXXX-XXXX'),
                                  Text(
                                    'xxxxx xxxx xxxxxxxx',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton.icon(
                          iconAlignment: IconAlignment.end,
                          icon: const Icon(Icons.send),
                          onPressed: () {},
                          label: const Text('Assign Worker'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[100],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            side: const BorderSide(),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
