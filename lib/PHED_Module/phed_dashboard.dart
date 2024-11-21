import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sih_ui_des/PHED_Module/phed_home_screen.dart';
import 'package:sih_ui_des/PHED_Module/phed_inv_screen.dart';
import 'package:sih_ui_des/PHED_Module/phed_profile_screen.dart';

class PhedDashboard extends StatefulWidget {
  const PhedDashboard({super.key});

  @override
  State<PhedDashboard> createState() => _PhedDashboardState();
}

class _PhedDashboardState extends State<PhedDashboard> {
  int navInd = 1;
  final screens = [
    PhedInvScreen(),
    PhedHomeScreen(),
    PhedProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final navIcons = <Widget>[
      ImageIcon(AssetImage('assets/images/inv_new_black.png')),
      Icon(Icons.home),
      Icon(Icons.person),
    ];
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          bottomNavigationBar: CurvedNavigationBar(
            height: 60,
            index: NavBarSetter.navIndex,
            items: navIcons,
            color: Colors.lightBlue,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.blue,
            onTap: (navInd) => setState(() => NavBarSetter.setNavind(navInd)),
          ),
          appBar: AppBar(
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: SearchBar(
                      hintText: 'Search Here',
                      leading: Icon(Icons.search),
                      trailing: [],
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    onPressed: () => null,
                    icon: Icon(
                      Icons.translate,
                      color: Colors.lightBlue[900],
                    ),
                    iconSize: 30,
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    onPressed: () => null,
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                    ),
                    iconSize: 30,
                  ),
                ],
              ),
            ),
          ),
          body: screens[NavBarSetter.navIndex]),
    );
  }
}

class NavBarSetter {
  static int navIndex = 1;
  static void setNavind(int navInd) => navIndex = navInd;
}
