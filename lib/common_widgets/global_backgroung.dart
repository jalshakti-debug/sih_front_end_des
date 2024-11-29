import 'package:flutter/material.dart';

class GlobalBackground extends StatelessWidget {

  Widget child;
  GlobalBackground({required this.child,super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4CB3F8),
              Color(0xFFA6D9FC),
              Color(0xFFFFFFFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.1, 0.27]),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              height: size.height/2,
              child: Image.asset(
                'assets/images/illusion.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          child
        ],
      ),
    );
  }
}
