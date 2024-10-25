import 'package:flutter/material.dart';
import '../models/taxi.dart';
import '../widgets/taxi_info.dart';

class ResultPage extends StatelessWidget {
  final Taxi taxi;

  ResultPage({required this.taxi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hasil Perhitungan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TaxiInfo(taxi: taxi),
      ),
    );
  }
}
