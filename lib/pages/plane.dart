import 'package:flutter/material.dart';

class PlaneView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new PlaneViewState();
  }
}

class PlaneViewState extends State<PlaneView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Airport'),
      ),

      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            Icons.local_airport,
            size: 54.0,
          ),
          new Text(
            'Airport',
            style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
