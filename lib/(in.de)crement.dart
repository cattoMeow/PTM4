import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PTM4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Increment Decrement'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nilai Counter:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.black87,
            child: Text(
              "",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: _incrementCounter,
              child: Text('+', style: TextStyle(color: Colors.white)),
              color: Colors.indigo,
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: _decrementCounter,
              child: Text('-', style: TextStyle(color: Colors.white)),
              color: Colors.indigo,
            ),
          )
        ],
      ),
    );
  }
}
