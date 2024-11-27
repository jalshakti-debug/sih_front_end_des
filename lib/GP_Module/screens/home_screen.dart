import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sih_ui_des/GP_Module/screens/assets_overview_screen.dart';
import 'package:sih_ui_des/GP_Module/screens/manage_consumers.dart';
import 'package:sih_ui_des/tile_ob.dart';

class GpHomeScreen extends StatefulWidget {
  const GpHomeScreen({super.key});

  @override
  State<GpHomeScreen> createState() => _GpHomeScreenState();
}

class _GpHomeScreenState extends State<GpHomeScreen> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.sizeOf(context);
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome to Jal Vardaan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 226, 235, 255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Container(
                            color: Colors.blue[100],
                            child: const Icon(
                              Icons.person,
                              size: 120,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Flexible(
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
                                'GP Admin',
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Services',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Container(
                  child: StaggeredGrid.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 32,
                    mainAxisSpacing: 32,
                    children: [
                      const StagTileOb(
                        onTilePressed: GpManageConsumers(),
                        icoPath: 'assets/images/user.png',
                        labl: 'Manage Consumers',
                        mainC: 1,
                        crossC: 1,
                      ),
                      const StagTileOb(
                        onTilePressed: GpAssetsOverviewScreen(),
                        icoPath: 'assets/images/water_tap.png',
                        labl: 'Asset Overview',
                        mainC: 1,
                        crossC: 1,
                      ),
                      const StagTileOb(
                        onTilePressed: Placeholder(),
                        icoPath: 'assets/images/push_noti.png',
                        labl: 'Push Notifications',
                        mainC: 1,
                        crossC: 1,
                      ),
                      const StagTileOb(
                        onTilePressed: Placeholder(),
                        icoPath: 'assets/images/payments.png',
                        labl: 'Payments',
                        mainC: 1,
                        crossC: 1,
                      ),
                      const StagTileOb(
                        onTilePressed: Placeholder(),
                        icoPath: 'assets/images/alerts.png',
                        labl: 'View Complaints',
                        mainC: 1,
                        crossC: 1,
                      ),
                      const StagTileOb(
                        onTilePressed: Placeholder(),
                        icoPath: 'assets/images/req_funds.png',
                        labl: 'Request Funds',
                        mainC: 1,
                        crossC: 1,
                      ),
                      StagTileOb(
                          onTilePressed: Placeholder(),
                          icoPath: 'assets/images/water_tap.png',
                          labl: 'Manage IOT',
                          mainC: 1,
                          crossC: 1),
                      StaggeredGridTile.count(
                        mainAxisCellCount: 1,
                        crossAxisCellCount: 2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                            elevation: 4,
                            backgroundColor:
                                const Color.fromARGB(255, 226, 235, 255),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Placeholder()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/images/reciepts.png',
                                  fit: BoxFit.fill,
                                  height: 90,
                                  width: 90,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: const Text(
                                  "Submit reciepts to PHED",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
