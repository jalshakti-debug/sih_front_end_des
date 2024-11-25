import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sih_ui_des/PHED_Module/phed_dashboard.dart';
import 'package:sih_ui_des/PHED_Module/phed_mng_gp_screen.dart';

class TileOb extends StatefulWidget {
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
  State<TileOb> createState() => _TileObState();
}

class _TileObState extends State<TileOb> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: Colors.indigo[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () => null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.ico,
            size: 70,
            color: Colors.blueGrey[700],
          ),
          Text(
            widget.labl,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}

class StagTileOb extends StatelessWidget {
  final GlobalKey<NavigatorState>? navKey;
  final String labl;
  final String icoPath;
  final int mainC;
  final int crossC;
  final Widget onTilePressed;
  const StagTileOb({
    super.key,
    required this.labl,
    required this.mainC,
    required this.crossC,
    required this.icoPath,
    required this.onTilePressed,
    this.navKey,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      mainAxisCellCount: mainC,
      crossAxisCellCount: crossC,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          elevation: 4,
          backgroundColor: Color.fromARGB(255, 226, 235, 255),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>onTilePressed));
        },
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
            Flexible(
              child: Text(
                labl,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
