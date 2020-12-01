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
      body: ListView(children: <Widget>[
        Image(
          image: NetworkImage(
              "https://asset.kompas.com/crops/oUbd-oWgmK9GQitYBij1i8DX-1Y=/0x73:1280x713/750x500/data/photo/2019/07/24/5d37bf7ba9d0f.jpg"),
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
