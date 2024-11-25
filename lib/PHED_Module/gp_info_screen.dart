import 'package:flutter/material.dart';
import 'package:sih_ui_des/PHED_Module/update_info_screen.dart';

class PhedGpInfoScreen extends StatefulWidget {
  const PhedGpInfoScreen({super.key});

  @override
  State<PhedGpInfoScreen> createState() => _PhedGpInfoScreenState();
}

class _PhedGpInfoScreenState extends State<PhedGpInfoScreen> {
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
                            image: AssetImage('assets/images/user.png'))),
                  ),
                  SizedBox(width: 16),
                  Flexible(
                    child: Text(
                      'Ferozpur Jhirka',
                      softWrap: true,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Center(
              child: Card(
                color:  Color.fromARGB(255, 226, 235, 255),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0, vertical: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      info_field_tile(
                        label: 'Panchayat Name',
                        value: 'Firozpur Jhirka',
                      ),
                      info_field_tile(
                        label: 'Sarpanch Name',
                        value: 'Manish Mishra',
                      ),
                      info_field_tile(
                        label: 'Mobile Number',
                        value: '+91 9637418520',
                      ),
                      info_field_tile(
                        label: 'LGD Code',
                        value: 'FP865493',
                      ),
                      info_field_tile(
                        label: 'Aadhar Id',
                        value: '5678 9671 1254',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 32,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PhedUpdateInfoScreen()),);
                  },
                  icon: Icon(Icons.edit),
                  label: Text('Update Info', style: TextStyle(fontSize: 16),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class info_field_tile extends StatelessWidget {
  final String label;
  final String value;
  const info_field_tile({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
