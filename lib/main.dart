import 'package:flutter/material.dart';

// local imports
import 'package:create_drawer/pages/caffe.dart';
import 'package:create_drawer/pages/plane.dart';
import 'package:create_drawer/pages/pizza.dart';

void main() => runApp(CreateDrawer());

class CreateDrawer extends StatelessWidget {
  final appTitle = 'My Play App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData.dark(),
      home: DrawerWidget(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DrawerWidget extends StatelessWidget {
  final String title;

  DrawerWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Store Home')), // body
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              currentAccountPicture:
                  Image.asset("assets/userImage-copy.png"),
              accountName: Text(
                'Prince Gee',
                style:
                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
              accountEmail: Text(
                'maprincegee@gmail.com',
                style:
                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: Icon(Icons.local_airport),
              title: Text('Airport'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new PlaneView()));
              },
            ),
            new ListTile(
              leading: new Icon(Icons.local_pizza),
              title: new Text('Pizza'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new PizzaView()));
              },
            ),
            new ListTile(
              leading: new Icon(Icons.local_cafe),
              title: new Text('Caffe'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new CaffeView()));
              },
            )
          ],
        ),
      ),
    );
  }
}
