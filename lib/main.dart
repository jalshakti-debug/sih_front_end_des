import 'package:flutter/material.dart';
import 'package:sih_ui_des/GP_Module/screens/dash_page.dart';
import 'package:sih_ui_des/PHED_Module/phed_dashboard.dart';

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
      home: PhedDashboard(),
    );
  }
}
