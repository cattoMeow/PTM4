import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;

  void inc() {
    setState(() {
      angka += 1;
    });
  }

  void dec() {
    setState(() {
      angka -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Button Inc Dec"),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Nilai Counter: " + angka.toString(),
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("+"),
                    onPressed: inc,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    child: Text("-"),
                    onPressed: dec,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
