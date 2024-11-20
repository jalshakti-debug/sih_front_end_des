import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TileOb extends StatelessWidget {
  final IconData ico;
  final String labl;
  // final String icoPath;
  const TileOb({
    super.key,
    required this.ico,
    required this.labl,
    // required this.icoPath,
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
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}

class StagTileOb extends StatelessWidget {
  final String labl;
  final String icoPath;
  final int mainC;
  final int crossC;
  const StagTileOb({
    super.key,
    required this.labl,
    required this.mainC,
    required this.crossC,
    required this.icoPath,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      mainAxisCellCount: mainC,
      crossAxisCellCount: crossC,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Color.fromARGB(255, 226, 235, 255),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () => null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(icoPath),
                )),
              ),
            ),
            Text(
              labl,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
