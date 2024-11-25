import 'package:flutter/material.dart';

class PhedUpdateInfoScreen extends StatefulWidget {
  const PhedUpdateInfoScreen({super.key});

  @override
  State<PhedUpdateInfoScreen> createState() => _PhedUpdateInfoScreenState();
}

class _PhedUpdateInfoScreenState extends State<PhedUpdateInfoScreen> {
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
                  Text(
                    'Ferozpur Jhirka',
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 128,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 2*MediaQuery.sizeOf(context).height/5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InputField(
                      label: 'Gram Panchayat Name',
                      value: 'Ferozpur Jhirka',
                    ),
                     InputField(
                      label: 'Sarpanch Name',
                      value: 'Manish Kumar',
                    ),
                     InputField(
                      label: 'Mobile Number',
                      value: '+91 963741850',
                    ),
                     InputField(
                      label: 'LGD Code',
                      value: 'FP865493',
                    ),
                     InputField(
                      label: 'Aadhar Id',
                      value: '5678 9671 1254',
                    ),
                  ],
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
                  onPressed: () => null,
                  icon: Icon(Icons.upload),
                  label: Text(
                    'Submit',
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

class InputField extends StatelessWidget {
  final String label;
  final String value;
  const InputField({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.edit),
        labelText: label,
        hintText: value,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
