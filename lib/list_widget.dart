import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String txt1;
  final String txt2;
  final Widget ontap;
  const ListWidget({
    super.key,
    required this.txt1,
    required this.txt2,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8),
      color: Colors.blue[100],
      child: Card(
        margin: EdgeInsets.all(16),
        color: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  height: 48,
                  // decoration: BoxDecoration(
                  //     border: Border.all(width: 1),
                  //     borderRadius: BorderRadius.circular(16)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ontap));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(210, 227, 242, 250),
                      ),
                      child: Column(
                        children: [
                          Text(txt1),
                          Text(txt2),
                        ],
                      )),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
