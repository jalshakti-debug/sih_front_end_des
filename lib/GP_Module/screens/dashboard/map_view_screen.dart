import 'package:flutter/material.dart';

import '../../../common_widgets/global_backgroung.dart';
import '../../../common_widgets/layout_builder_common.dart';

class GpMapViewScreen extends StatefulWidget {
  const GpMapViewScreen({super.key});

  @override
  State<GpMapViewScreen> createState() => _GpMapViewScreenState();
}

class _GpMapViewScreenState extends State<GpMapViewScreen> {
 @override
  Widget build(BuildContext context) {
    return LayoutBuilderCommon(
      mobileDesign: GlobalBackground(child: mobileDesign()),
    );
  }
  Widget mobileDesign() {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisExtent: constraints.maxHeight - 80),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
              left: 16.0,
              top: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'GIS Map View',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.greenAccent[50],
                      height: constraints.maxHeight,
                      child: Placeholder(),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 180,
                      mainAxisExtent: 40,
                      crossAxisSpacing: 32,
                      mainAxisSpacing: 32,
                    ),
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                        ),
                        onPressed: ()=> null,
                        child: Text('A.W.C.', textAlign: TextAlign.center,),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                        ),
                        onPressed: ()=> null,
                        child: Text('Schools', textAlign: TextAlign.center,),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                        ),
                        onPressed: ()=> null,
                        child: Text('Households', textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
