import 'package:flutter/material.dart';
import '../widgets/taxi_form.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Masukan Data Taxi di Sini')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TaxiForm(),
      ),
    );
  }
}
