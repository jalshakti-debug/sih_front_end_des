import 'package:flutter/material.dart';

class PhedAlertScreen extends StatefulWidget {
  const PhedAlertScreen({super.key});

  @override
  State<PhedAlertScreen> createState() => _PhedAlertScreenState();
}

class _PhedAlertScreenState extends State<PhedAlertScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: constraints.maxHeight + 80),
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 16.0,
                  left: 16.0,
                  top: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/alerts.png'))
                                ),
                          ),
                          SizedBox(width: 16),
                          Flexible(
                            child: Text(
                              'Alert System',
                              softWrap: true,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 48,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(4)),
                            child: Text('Eg_List'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}