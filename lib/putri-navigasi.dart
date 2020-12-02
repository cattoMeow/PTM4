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
        title: Center(
          child: Text('Gunung Bromo'),
        ),
      ),
      body: ListView(children: <Widget>[
        Image(
          image: NetworkImage(
              "https://asset.kompas.com/crops/oUbd-oWgmK9GQitYBij1i8DX-1Y=/0x73:1280x713/750x500/data/photo/2019/07/24/5d37bf7ba9d0f.jpg"),
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.all(15),
          height: 300,
          child: Text(
            "Gunung Bromo (dari bahasa Sanskerta: Brahma, "
            "salah seorang Dewa Utama dalam agama Hindu) atau dalam "
            "bahasa Tengger dieja 'Brama', adalah sebuah gunung berapi "
            "aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian "
            "2.329 meter di atas permukaan laut dan berada dalam empat wilayah "
            "kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, "
            "Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal "
            "sebagai objek wisata utama di Jawa Timur. Sebagai sebuah objek wisata, "
            "Bromo menjadi menarik karena statusnya sebagai gunung berapi yang "
            "masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional "
            "Bromo Tengger Semeru.",
            softWrap: true,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              RaisedButton(
                child: Text('Selanjutnya'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Halaman2()),
                  );
                },
              ),
            ],
          ),
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
        title: Center(
          child: Text("Tanah Lot"),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(children: <Widget>[
        Image(
          image: NetworkImage(
              "https://cdn.rentalmobilbali.net/wp-content/uploads/2019/12/Sunset-Pura-Tanah-Lot-Bali-Feature-Image.jpg"),
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.all(15),
          height: 300,
          child: Text(
            "Pura Tanah Lot adalah salah satu Pura yang sangat disucikan di Bali, "
            "Indonesia. Di sini ada dua pura yang terletak di atas batu besar. "
            "Satu terletak di atas bongkahan batu dan satunya terletak di atas "
            "tebing mirip dengan Pura Uluwatu. Pura Tanah Lot ini merupakan bagian "
            "dari pura Dang Kahyangan.",
            softWrap: true,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'),
              ),
              RaisedButton(
                child: Text('Selanjutnya'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Halaman3()),
                  );
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Candi Borobudur"),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(children: <Widget>[
        Image(
          image: NetworkImage(
              "https://bob.kemenpar.go.id/wp-content/uploads/2019/10/candi-borobudur-harnasco.jpg"),
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.all(15),
          height: 300,
          child: Text(
            "Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, "
            "Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih "
            "100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, "
            "dan 40 km di sebelah barat laut Yogyakarta. Candi berbentuk stupa ini "
            "didirikan oleh para penganut agama Buddha Mahayana sekitar tahun 800-an "
            "Masehi pada masa pemerintahan wangsa Syailendra. Borobudur adalah candi "
            "atau kuil Buddha terbesar di dunia, sekaligus salah satu monumen "
            "Buddha terbesar di dunia",
            softWrap: true,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
