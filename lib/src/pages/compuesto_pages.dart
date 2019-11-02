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
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _BottomNavigationBar(context),
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
            ])),
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

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Classify transaction into a particulas category',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }

  Widget _BottomNavigationBar(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today, size: 30.0),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.bubble_chart, size: 30.0),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
          )
        ],
      ),
    );
  }
}
