import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return LayoutBuilder(builder: (context, constraints) {
      return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: isPortrait
                ? constraints.maxHeight - 80
                : constraints.maxHeight + 250),
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
