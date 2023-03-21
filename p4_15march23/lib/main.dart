import 'package:flutter/material.dart';
import 'halaman_utama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '15 March 23',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HalamanUtama(),
    );
  }
}