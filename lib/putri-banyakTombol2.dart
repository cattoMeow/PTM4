import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
// class _ToastExample extends State{}

class _MyAppState extends State<MyApp> {
  void showToast() {
    Fluttertoast.showToast(
        msg: 'Button Pressed',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black87,
        textColor: Colors.white);
  }

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
                RaisedButton(
                  child: Text("Tombol 1"),
                  onPressed: showToast,
                ),
                RaisedButton(
                  child: Text("Tombol 2"),
                  onPressed: showToast,
                ),
                RaisedButton(
                  child: Text("Tombol 3"),
                  onPressed: showToast,
                ),
                RaisedButton(
                  child: Text("Tombol 4"),
                  onPressed: showToast,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
