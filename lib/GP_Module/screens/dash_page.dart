import 'package:flutter/material.dart';
import 'package:sih_ui_des/GP_Module/screens/inventory/inventory_info_screen.dart';
import 'package:sih_ui_des/GP_Module/screens/dashboard/map_view_screen.dart';
import 'package:sih_ui_des/GP_Module/screens/dashboard/profile_screen.dart';
import '../../common_widgets/global_backgroung.dart';
import '../../common_widgets/layout_builder_common.dart';
import '../screens/home_screen.dart';

class GpDashboard extends StatefulWidget {
  const GpDashboard({super.key});

  @override
  State<GpDashboard> createState() => _GpDashboardState();
}

class _GpDashboardState extends State<GpDashboard> {
  int currentPageIndex = 2;
  final screens = [
    GpInventoryInfoScreen(),
    GpMapViewScreen(),
    GpHomeScreen(),
    Placeholder(),
    GpProfileScreen(),
  ];
   @override
  Widget build(BuildContext context) {
    return LayoutBuilderCommon(
      mobileDesign: GlobalBackground(child: mobileDesign()),
    );
  }
  Widget mobileDesign() {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                print(index);
                currentPageIndex = index;
              });
            },
            backgroundColor: Colors.lightBlue[100],
            indicatorColor: Colors.lightBlue,
            selectedIndex: currentPageIndex,
            destinations: <Widget>[
              NavigationDestination(
                icon: ImageIcon(AssetImage('assets/images/inv_new_black.png')),
                label: 'Inventory Ov..',
              ),
              NavigationDestination(
                icon: Icon(Icons.location_on),
                label: 'GIS',
              ),
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.warning),
                label: 'Complaints',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
          // appBar: AppBar(
          //   flexibleSpace: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Flexible(
          //           child: SearchBar(
          //             hintText: 'Search Here',
          //             leading: Icon(Icons.search),
          //             trailing: [],
          //           ),
          //         ),
          //         IconButton(
          //           alignment: Alignment.center,
          //           onPressed: () => null,
          //           icon: Icon(
          //             Icons.translate,
          //             color: Colors.lightBlue[900],
          //           ),
          //           iconSize: 30,
          //         ),
          //         IconButton(
          //           alignment: Alignment.center,
          //           onPressed: () => null,
          //           icon: Icon(
          //             Icons.notifications_none,
          //             color: Colors.black,
          //           ),
          //           iconSize: 30,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          body: screens[currentPageIndex]),
    );
  }
}
