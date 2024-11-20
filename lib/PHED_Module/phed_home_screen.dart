import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../tile_ob.dart';

class PhedHomeScreen extends StatefulWidget {
  const PhedHomeScreen({super.key});

  @override
  State<PhedHomeScreen> createState() => _PhedHomeScreenState();
}

class _PhedHomeScreenState extends State<PhedHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
                  child: Text(
                    'Welcome to Jal Vardaan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 226, 235, 255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Container(
                            color: Colors.blue[100],
                            child: Icon(
                              Icons.person,
                              size: 120,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi !',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Admin',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'ID: XXXXXX',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Monospace',
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Services',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: StaggeredGrid.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 32,
                    mainAxisSpacing: 32,
                    children: [
                      StagTileOb(
                        icoPath: 'assets/images/water_tap.png',
                        labl: 'Manage GPs',
                        mainC: 1,
                        crossC: 1,
                      ),
                      StagTileOb(
                        icoPath: 'assets/images/water_tap.png',
                        labl: 'Asset Overview',
                        mainC: 1,
                        crossC: 1,
                      ),
                      StagTileOb(
                        icoPath: 'assets/images/water_tap.png',
                        labl: 'Financial Overview',
                        mainC: 2,
                        crossC: 1,
                      ),
                      StagTileOb(
                        icoPath: 'assets/images/water_tap.png',
                        labl: 'Map View',
                        mainC: 1,
                        crossC: 1,
                      ),
                      StagTileOb(
                        icoPath: 'assets/images/water_tap.png',
                        labl: 'Alerts',
                        mainC: 1,
                        crossC: 1,
                      ),
                      StagTileOb(
                          icoPath: 'assets/images/water_tap.png',
                          labl: 'Compare GPs',
                          mainC: 1,
                          crossC: 3)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
