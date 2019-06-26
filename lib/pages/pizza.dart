import 'package:flutter/material.dart';

class PizzaView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PizzaViewState();
  }
}

class PizzaViewState extends State<PizzaView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Pizza'),
      ),
      body: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.local_pizza,
              size: 54.0,
            ),
            new Text(
              'Pizza',
              style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
