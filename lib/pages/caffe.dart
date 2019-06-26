import 'package:flutter/material.dart';

class CaffeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CaffeViewState();
  }
}

class CaffeViewState extends State<CaffeView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Caffe'),
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
              'Caffe',
              style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
