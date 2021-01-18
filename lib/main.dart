import 'package:flutter/material.dart';

void main() {
  runApp(new myApp());
}

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: "My App",
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('My App'),
//         ),
//         body: new Center(
//           child: new Text('Welcome to Hello World'),
//         ),
//       ),
//     );
//   }
// }

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello World";

  void _changeText() {
    setState(() {
      if (myText.startsWith("H")) {
        myText = "Welcome to My App";
      } else {
        myText = "Hello world";
      }
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText,style: new TextStyle(
              fontSize: 20,
            ),),
            new RaisedButton(
              child: new Text("Click Me", style: new TextStyle(
                color: Colors.red,
              ),),
              onPressed: _changeText,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stateful Widget'),
      ),
      body: _bodyWidget(),
    );
  }
}
