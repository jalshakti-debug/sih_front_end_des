import 'package:flutter/material.dart';

class PhedAddAnnouncementsScreen extends StatefulWidget {
  const PhedAddAnnouncementsScreen({super.key});

  @override
  State<PhedAddAnnouncementsScreen> createState() =>
      _PhedAddAnnouncementsScreenState();
}

class _PhedAddAnnouncementsScreenState
    extends State<PhedAddAnnouncementsScreen> {
  String? selectedReason;
  final List<String> gpIdList = ['GPXXXXX', 'GPYYYYY', 'GPZZZZZ'];
  late FocusNode amountfocus;
  late FocusNode reasonfocus;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: FlexibleSpaceBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Add',
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                const Text(
                  'Announcement',
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue[100],
                        border: Border.all()),
                    child: DropdownButton(
                      isExpanded: true,
                      iconSize: 30,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.black,
                      items: gpIdList.map((item) {
                        return DropdownMenuItem(
                          child: Text(
                            item.toString(),
                          ),
                          value: item.toString(),
                        );
                      }).toList(),
                      hint: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Select GP Id",
                        ),
                      ),
                      onChanged: (newVal) {
                        setState(() {
                          selectedReason = newVal;
                        });
                      },
                      value: selectedReason,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: 20,
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
