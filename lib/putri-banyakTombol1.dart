import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Banyak Tombol"),
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
                      child: Text("Tombol 1"),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RaisedButton(
                      child: Text("Tombol 2"),
                      onPressed: null,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Tombol 3"),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RaisedButton(
                      child: Text("Tombol 4"),
                      onPressed: null,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
