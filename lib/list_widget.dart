import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String txt1;
  final String txt2;
  const ListWidget({
    super.key,
    required this.txt1,
    required this.txt2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
              return Container(
                height: 48,
                // decoration: BoxDecoration(
                //     border: Border.all(width: 1),
                //     borderRadius: BorderRadius.circular(16)),
                child: Card(
                    color: const Color.fromARGB(210, 227, 242, 250),
                    child: Column(
                      children: [
                        Text(txt1),
                        Text(txt2),
                      ],
                    )),
              );
            },
          ),
        ),
      ),
    );
  }
}
