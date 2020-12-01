import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Objek Wisata',
    home: Halaman1(),
  ));
}

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: ListView(children: [
        Image.asset(
          'images/Borobudur.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        ElevatedButton(
          child: Text('Selanjutnya'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Halaman2()),
            );
          },
        ),
      ]),
    );
  }
}

class Halaman2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Objek Wisata 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Objek Wisata 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
