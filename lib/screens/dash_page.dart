import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sih_ui_des/screens/asset_manage_page.dart';
import 'package:sih_ui_des/screens/complaint_screen.dart';
import 'package:sih_ui_des/screens/home_page.dart';
import 'package:sih_ui_des/screens/map_view_screen.dart';
import 'package:sih_ui_des/screens/profile_screen.dart';

class DashPage extends StatefulWidget {
  const DashPage({super.key});

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  int navInd = 2;
  final screens = [
    AssetManagePage(),
    MapViewScreen(),
    HomePage(),
    ComplaintScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final navIcons = <Widget>[
      Icon(Icons.assessment),
      Icon(Icons.map),
      Icon(Icons.home),
      Icon(Icons.warning),
      Icon(Icons.person),
    ];
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          bottomNavigationBar: CurvedNavigationBar(
            height: 60,
            index: navInd,
            items: navIcons,
            color: Colors.lightBlue,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.blue,
            onTap: (navInd) => setState(() => this.navInd = navInd),
          ),
          appBar: AppBar(flexibleSpace: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                    children: [
                      Flexible(
                        child: SearchBar(
                          hintText: 'Search Here',
                          leading: Icon(Icons.search),
                        ),
                      ),
                      IconButton(
                        onPressed:() => null,
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                        ),
                        iconSize: 40,
                      )
                    ],
                  ),
          ),),
          body: screens[navInd]),
    );
  }
}
