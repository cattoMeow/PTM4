import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Main Menu",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "Main menu"),
      routes: {
        // '/': (BuildContext context) => MyHomePage(),
        // '/putri-inc-dec'
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: missing_required_param
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Menu Utama"),
            ),
          ),
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        child: Text("In/Decrement"),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/putri-inc-dec');
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
