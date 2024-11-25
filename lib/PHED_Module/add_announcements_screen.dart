import 'package:flutter/material.dart';

class PhedAddAnnouncementsScreen extends StatefulWidget {
  const PhedAddAnnouncementsScreen({super.key});

  @override
  State<PhedAddAnnouncementsScreen> createState() =>
      _PhedAddAnnouncementsScreenState();
}

class _PhedAddAnnouncementsScreenState
    extends State<PhedAddAnnouncementsScreen> {
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
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  DropdownMenu(dropdownMenuEntries: [], label: Text('Announcement Type'),),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 300,
                    child: TextField(
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.top,
                      expands: true,
                      maxLines: null,
                      minLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue[100],
                        labelText: 'Announcement',
                        alignLabelWithHint: true,
                        hintText: 'Enter Announcement Here',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
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
                  onPressed: () => null,
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
