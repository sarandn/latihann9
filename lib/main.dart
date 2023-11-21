import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recommendation',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Tambahkan widget untuk menampilkan logo di sini
            Image.asset(
              'assets/r.jpg',
              width: 100.0, // Sesuaikan ukuran sesuai kebutuhan Anda
              height: 100.0,
            ),
            SizedBox(height: 16.0),
            // Tambahkan widget untuk menampilkan nama aplikasi di sini
            Text(
              'Recommendation',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
