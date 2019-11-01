import 'dart:math';

import 'package:flutter/material.dart';

class CompuestoPage extends StatelessWidget {
  const CompuestoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(55, 52, 102, 1.0),
              Color.fromRGBO(39, 41, 66, 1.0)
            ]),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 330.0,
        width: 330.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
               Color.fromRGBO(249, 71, 193, 1.0),
              Color.fromRGBO(243, 144, 170, 1.0),
            ])
            ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          left: -23.0,
          child: cajaRosa,
        ),
      ],
    );
  }
}
