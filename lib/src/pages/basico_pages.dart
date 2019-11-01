import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImg(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImg() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYy5j5g5gU9l6P4X1tNLQ03Bg3V2wKbL6hMVcp-2rzGybFye_J'),
        fit: BoxFit.cover,
        height: 180.0,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con montañas',
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Un demo de una app simple',
                    style: estiloSubTitulo,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 8.0),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
          'Ex anim reprehenderit anim tempor incididunt amet tempor in sit aute qui. Et ut eiusmod sit ut Lorem aliqua adipisicing consectetur. Laborum officia labore labore eiusmod magna pariatur. Magna minim occaecat tempor exercitation in et id. Ad aute esse enim esse sint commodo Lorem excepteur aliquip mollit in incididunt ea Lorem.',
          textAlign: TextAlign.justify),
    );
  }
}
