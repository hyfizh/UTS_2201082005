import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() {
  runApp(TaxiApp());
}

class TaxiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS 2201082005 B',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: InputPage(),
    );
  }
}
