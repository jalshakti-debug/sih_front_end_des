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
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenSize*0.15,
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: FlexibleSpaceBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 16),
                  SizedBox(
                    width: screenSize * 0.5,
                    child: const Text(
                      'Send Announcements',
                      softWrap: true,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: AnnouncementWidget(
                  gpId: 'XXXXX',
                  anDate: 'xx-xx-xxxx',
                  announcement:
                      'Example announcement anything anyhting anything',
                  screenSize: screenSize,
                ),
              ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhedAddAnnouncementsScreen()));
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
    );
  }
}

class AnnouncementWidget extends StatelessWidget {
  final String gpId;
  final String anDate;
  final String announcement;
  final double screenSize;
  const AnnouncementWidget({
    super.key,
    required this.gpId,
    required this.anDate,
    required this.announcement,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Container(
              height: screenSize * 0.08,
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'To: $gpId',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Date: $anDate')
                      ],
                    ),
                    Text(announcement),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
