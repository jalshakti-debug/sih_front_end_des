
import 'package:flutter/material.dart';

class LayoutBuilderCommon extends StatelessWidget {
  Widget mobileDesign;

   LayoutBuilderCommon({required this.mobileDesign,super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext ctx, BoxConstraints constraints){
        if(constraints.maxWidth<800) return mobileDesign;
        return const Center(child: Text('Large SCreen'),);
      }
    );
  }
}
