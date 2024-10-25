import 'package:flutter/material.dart';
import '../models/taxi.dart';
import '../pages/result_page.dart';

class TaxiForm extends StatefulWidget {
  @override
  _TaxiFormState createState() => _TaxiFormState();
}

class _TaxiFormState extends State<TaxiForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController kodeTransaksiController = TextEditingController();
  TextEditingController kodePenumpangController = TextEditingController();
  TextEditingController namaPenumpangController = TextEditingController();
  TextEditingController platNomorController = TextEditingController();
  TextEditingController supirController = TextEditingController();
  TextEditingController biayaAwalController = TextEditingController();
  TextEditingController biayaPerKilometerController = TextEditingController();
  TextEditingController jumlahKilometerController = TextEditingController();
  String jenisPenumpang = 'Regular';

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      Taxi taxi = Taxi(
        kodeTransaksi: kodeTransaksiController.text,
        kodePenumpang: kodePenumpangController.text,
        namaPenumpang: namaPenumpangController.text,
        jenisPenumpang: jenisPenumpang,
        platNomor: platNomorController.text,
        supir: supirController.text,
        biayaAwal: double.parse(biayaAwalController.text),
        biayaPerKilometer: double.parse(biayaPerKilometerController.text),
        jumlahKilometer: double.parse(jumlahKilometerController.text),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResultPage(taxi: taxi)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          TextFormField(
            controller: kodeTransaksiController,
            decoration: InputDecoration(labelText: 'Kode Transaksi'),
            validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
          ),
          TextFormField(
            controller: kodePenumpangController,
            decoration: InputDecoration(labelText: 'Kode Penumpang'),
            validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
          ),
          TextFormField(
            controller: namaPenumpangController,
            decoration: InputDecoration(labelText: 'Nama Penumpang'),
            validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
          ),
          DropdownButtonFormField<String>(
            value: jenisPenumpang,
            onChanged: (newValue) {
              setState(() {
                jenisPenumpang = newValue!;
              });
            },
            items: ['Regular', 'VIP', 'GOLD']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            decoration: InputDecoration(labelText: 'Jenis Penumpang'),
          ),
          TextFormField(
            controller: platNomorController,
            decoration: InputDecoration(labelText: 'Plat Nomor'),
            validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
          ),
          TextFormField(
            controller: supirController,
            decoration: InputDecoration(labelText: 'Nama Supir'),
            validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
          ),
          TextFormField(
            controller: biayaAwalController,
            decoration: InputDecoration(labelText: 'Biaya Awal'),
            keyboardType: TextInputType.number,
            validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
          ),
          TextFormField(
            controller: biayaPerKilometerController,
            decoration: InputDecoration(labelText: 'Biaya per Kilometer'),
            keyboardType: TextInputType.number,
            validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
          ),
          TextFormField(
            controller: jumlahKilometerController,
            decoration: InputDecoration(labelText: 'Jumlah Kilometer'),
            keyboardType: TextInputType.number,
            validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: submitForm,
            child: Text('Hitung Total Bayar'),
          ),
        ],
      ),
    );
  }
}
