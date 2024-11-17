import 'package:flutter/material.dart';

import '../tile_ob.dart';

class AssetManagePage extends StatefulWidget {
  const AssetManagePage({super.key});

  @override
  State<AssetManagePage> createState() => _AssetManagePageState();
}

class _AssetManagePageState extends State<AssetManagePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisExtent: constraints.maxHeight - 80),
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
                    'Asset Management',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      crossAxisSpacing: 32,
                      mainAxisSpacing: 32,
                    ),
                    children: [
                      TileOb(
                        ico: Icons.remove_red_eye,
                        labl: 'View Assets',
                      ),
                      TileOb(
                        ico: Icons.analytics,
                        labl: 'Analytics',
                      ),
                      TileOb(
                        ico: Icons.add_shopping_cart,
                        labl: 'Asset Restock',
                      ),
                      TileOb(
                        ico: Icons.map,
                        labl: 'View on Map',
                      ),
                      // TileOb(
                      //   ico: Icons.error_outline,
                      //   labl: 'View Complaints',
                      // ),
                      // TileOb(
                      //   ico: Icons.device_hub,
                      //   labl: 'Manage IOT',
                      // ),
                      // TileOb(
                      //   ico: Icons.account_balance_wallet,
                      //   labl: 'Manage Finance',
                      // ),
                      // TileOb(
                      //   ico: Icons.storage,
                      //   labl: 'Asset Overview',
                      // ),
                      // TileOb(
                      //   ico: Icons.inventory,
                      //   labl: 'Manage Inventory',
                      // ),
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
