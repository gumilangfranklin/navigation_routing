import 'package:flutter/material.dart';
import 'package:routing_navigasihh/halaman1.dart';
import 'package:routing_navigasihh/halaman2.dart';
import 'package:routing_navigasihh/halaman2withdata.dart';
import 'package:routing_navigasihh/halamanlainnya.dart';
import 'package:routing_navigasihh/halamanpengganti.dart';
import 'package:routing_navigasihh/mengembalikandata.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Halaman1(),
        '/halaman-kedua': (context) => halaman2(),
        '/halaman-kedua-with-data': (context) => halaman2withdata(
            data: ModalRoute.of(context)?.settings.arguments as String),
        '/mengembalikan-data': (context) => mengembalikandata(),
        '/halamanpengganti': (context) => halamanpengganti(),
        '/halamanlainnya': (context) => halamanlainnya(),
      },
    );
  }
}
