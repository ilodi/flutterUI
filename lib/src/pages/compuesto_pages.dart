import 'dart:math';
import 'dart:ui';

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
            //SigleScroll se usa como un scrollView
            child: Column(
              children: <Widget>[
                _titulos(),
                _bottonesRedondeados(),
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
        padding: EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 3.0,
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
      //copia del tema actual
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 52, 102, 1.0),
          primaryColor: Colors.pinkAccent,
          //los otros botones no activos texto secundario
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today, size: 24.0),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.bubble_chart, size: 24.0),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.supervised_user_circle, size: 24.0),
          )
        ],
      ),
    );
  }

  Widget _bottonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'Flutter'),
            _crearBotonRedondeado(Colors.purple, Icons.edit, 'Flutter'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.red, Icons.edit_attributes, 'Flutter'),
            _crearBotonRedondeado(Colors.orange, Icons.enhanced_encryption, 'Flutter'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.green, Icons.eject, 'Flutter'),
            _crearBotonRedondeado(Colors.yellow, Icons.drag_handle, 'Flutter'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueAccent, Icons.dvr, 'Flutter'),
            _crearBotonRedondeado(Colors.lightBlue, Icons.directions_bus, 'Flutter'),
          ],
        )
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: 
                Icon(
                  icono,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: color),
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
