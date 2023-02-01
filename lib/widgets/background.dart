import 'dart:math';

import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.2,
        0.8
      ],
          colors: [
        Color(0xff2e305f),
        Color(0xff202333),
      ]));

  const BackGround({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //color morado
          decoration: boxDecoration,
        ),

        //caja rosada
        Positioned(
          top: -90,
          left: -15,
          child: _PinkBox()
        ),

      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle:  -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
    
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            
            ]
          ),
    
        ),
      ),
    );
  }
}
