import 'package:flutter/material.dart';
import 'package:sih_ui_des/GP_Module/screens/consumer/consumer_info_screen.dart';
import 'package:sih_ui_des/GP_Module/screens/dash_page.dart';
import 'package:sih_ui_des/GP_Module/screens/gp_login%20page.dart';
import 'package:sih_ui_des/GP_Module/screens/home_screen.dart';
import 'package:sih_ui_des/PHED_Module/add_announcements_screen.dart';
import 'package:sih_ui_des/PHED_Module/add_gp_screen.dart';
import 'package:sih_ui_des/PHED_Module/asset_info_screen.dart';
import 'package:sih_ui_des/PHED_Module/gp_info_screen.dart';
import 'package:sih_ui_des/PHED_Module/inventory_info_screen.dart';
import 'package:sih_ui_des/PHED_Module/phed_alert_screen.dart';
import 'package:sih_ui_des/PHED_Module/phed_dashboard.dart';
import 'package:sih_ui_des/PHED_Module/phed_finan_over_screen.dart';
import 'package:sih_ui_des/PHED_Module/alert_system.dart';
import 'package:sih_ui_des/PHED_Module/send_announce_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Colors.black,
              onPrimary: Colors.black,
              secondary: Colors.blue,
              onSecondary: Colors.white,
              error: Colors.red,
              onError: Colors.yellow,
              surface: Colors.white,
              onSurface: Colors.black)),
      debugShowCheckedModeBanner: false,
      home: GpDashboard(),
    );
  }
}
