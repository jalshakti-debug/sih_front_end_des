import 'package:flutter/material.dart';

class TileOb extends StatelessWidget {
  final IconData ico;
  final String labl;
  const TileOb({
    super.key,
    required this.ico,
    required this.labl,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: Colors.blue[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () => null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            ico,
            size: 70,
            color: Colors.blueGrey[700],
          ),
          Text(
            labl,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
