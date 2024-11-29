import 'package:flutter/material.dart';

import '../../../common_widgets/global_backgroung.dart';
import '../../../common_widgets/layout_builder_common.dart';

class GpProfileScreen extends StatefulWidget {
  const GpProfileScreen({super.key});

  @override
  State<GpProfileScreen> createState() => _GpProfileScreenState();
}

class _GpProfileScreenState extends State<GpProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilderCommon(
      mobileDesign: GlobalBackground(child: mobileDesign()),
    );
  }
  Widget mobileDesign() {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
              left: 16.0,
              top: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'My Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 16.0),
                  child: Container(
                    height: constraints.maxHeight / 8,
                    width: constraints.maxWidth / 4,
                    child: Placeholder(),
                  ),
                ),
                TextButton.icon(
                  onPressed: () => null,
                  icon: Icon(Icons.add_a_photo),
                  label: Text('Change profile photo'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic Information',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Full Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Admin',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Monospace'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Mobile Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '+91 XXXXXXXXXX',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Monospace'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Login ID',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'XXXXXX',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Monospace'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight / 6,
                      ),
                      Center(
                          child: ElevatedButton(
                              onPressed: () => null,
                              child: Text('Log Out'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                minimumSize:
                                    Size(constraints.maxWidth / 0.5, 50),
                              )))
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
