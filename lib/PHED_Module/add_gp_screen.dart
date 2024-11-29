import 'package:flutter/material.dart';

class PhedAddGPScreen extends StatefulWidget {
  const PhedAddGPScreen({super.key});

  @override
  State<PhedAddGPScreen> createState() => _PhedAddGPScreenState();
}

class _PhedAddGPScreenState extends State<PhedAddGPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 64,
              ),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                            image: AssetImage('assets/images/user.png'))),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add',
                        softWrap: true,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                        ),
                      ),
                      Text(
                        'Gram Panchayat',
                        softWrap: true,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Enter Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 2 * MediaQuery.sizeOf(context).height / 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InputField(
                        label: 'Enter Gram Panchayat Name',
                        value: 'Ferozpur Jhirka',
                      ),
                      InputField(
                        label: 'Enter Sarpanch Name',
                        value: 'Manish Kumar',
                      ),
                      InputField(
                        label: 'Enter Mobile Number',
                        value: '+91 963741850',
                      ),
                      InputField(
                        label: 'Enter LGD Code',
                        value: 'FP865493',
                      ),
                      InputField(
                        label: 'Enter Aadhar Id',
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
        labelText: label,

        
        hintText: value,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
