import 'package:flutter/material.dart';
import 'package:sih_ui_des/PHED_Module/add_gp_screen.dart';
import 'package:sih_ui_des/tile_ob.dart';

class PhedMngGpScreen extends StatefulWidget {
  const PhedMngGpScreen({super.key});

  @override
  State<PhedMngGpScreen> createState() => _PhedMngGpScreenState();
}

class _PhedMngGpScreenState extends State<PhedMngGpScreen> {
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.orange),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.person,
                                size: 50,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Flexible(
                            child: Text(
                              'Manage Gram Panchayats',
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
                    Flexible(
                      child: Text(
                        'Active Gram Panchayats',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ),
                    Expanded(
                      flex: 3,
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
                    Expanded(
                      flex: 1,
                      child: Center(
                        heightFactor: 1.2,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 226, 235, 255),
                            padding: EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(width: 1),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PhedAddGPScreen()));
                          },
                          label: Text(
                            'Add Gram Panchayat',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          icon: Icon(Icons.add),
                        ),
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
