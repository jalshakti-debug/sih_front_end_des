import 'package:flutter/material.dart';
import 'package:sih_ui_des/tile_ob.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  color: Colors.blue[100],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 80,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(width: 16),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name: Admin',
                                style: TextStyle(fontSize: 15),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Login ID: XXXXXX',
                                style: TextStyle(fontSize: 15),
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
                    'Service',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    children: [
                      TileOb(
                        ico: Icons.admin_panel_settings,
                        labl: 'PHED Requests',
                      ),
                      TileOb(
                        ico: Icons.group,
                        labl: 'Manage Users',
                      ),
                      TileOb(
                        ico: Icons.add_shopping_cart,
                        labl: 'Request Restock',
                      ),
                      TileOb(
                        ico: Icons.map,
                        labl: 'Map View',
                      ),
                      TileOb(
                        ico: Icons.error_outline,
                        labl: 'View Complaints',
                      ),
                      TileOb(
                        ico: Icons.device_hub,
                        labl: 'Manage IOT',
                      ),
                      TileOb(
                        ico: Icons.account_balance_wallet,
                        labl: 'Manage Finance',
                      ),
                      TileOb(
                        ico: Icons.storage,
                        labl: 'Asset Overview',
                      ),
                      TileOb(
                        ico: Icons.inventory,
                        labl: 'Manage Inventory',
                      ),
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
