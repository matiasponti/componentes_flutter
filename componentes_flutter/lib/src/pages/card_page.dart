import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  @override
Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Titulo de esta tarjeta'),
            subtitle: Text('subtitulo de esta primer tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );

  }

  Widget _cardTipo2() {
    final card =  Container(

      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://miro.medium.com/max/2160/0*QNdQhs_T3ffa6B0m.jpeg'),
            placeholder:AssetImage('assets/jar-loading.gif') ,
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Texto de prueba, pie de imagen'),
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ] ,
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );

  }
}