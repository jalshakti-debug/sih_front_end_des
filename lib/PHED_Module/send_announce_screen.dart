import 'package:flutter/material.dart';
import 'package:sih_ui_des/PHED_Module/add_announcements_screen.dart';

class PhedSendAnnounceScreen extends StatefulWidget {
  const PhedSendAnnounceScreen({super.key});

  @override
  State<PhedSendAnnounceScreen> createState() => _PhedSendAnnounceScreenState();
}

class _PhedSendAnnounceScreenState extends State<PhedSendAnnounceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/announcement.png'))),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Send Announcements',
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(4)),
                    child: Text('Eg_List'),
                  );
                },
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
                    elevation: 4,
                    backgroundColor: Color.fromARGB(255, 226, 235, 255),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PhedAddAnnouncementsScreen()));
                  },
                  icon: Icon(Icons.add),
                  label: Text(
                    'Add New Announcement',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
