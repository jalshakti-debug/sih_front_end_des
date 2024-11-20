import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sih_ui_des/PHED_Module/phed_home_screen.dart';

class PhedDashboard extends StatefulWidget {
  const PhedDashboard({super.key});

  @override
  State<PhedDashboard> createState() => _PhedDashboardState();
}

class _PhedDashboardState extends State<PhedDashboard> {
  int navInd = 1;
  final screens = [
    Placeholder(),
    PhedHomeScreen(),
    Placeholder(),
  ];
  @override
  Widget build(BuildContext context) {
    final navIcons = <Widget>[
      Icon(Icons.list_alt),
      Icon(Icons.home),
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
          body: screens[navInd]),
    );
  }
}
