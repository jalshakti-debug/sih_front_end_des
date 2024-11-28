import 'package:flutter/material.dart';

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
        toolbarHeight: 130,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: FlexibleSpaceBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 16),
                    SizedBox(
                      width: screenSize * 0.25,
                      child: const Text(
                        'View Complaints',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
