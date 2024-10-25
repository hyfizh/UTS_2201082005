import 'package:flutter/material.dart';
import '../models/taxi.dart';

class TaxiInfo extends StatelessWidget {
  final Taxi taxi;

  TaxiInfo({required this.taxi});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Kode Transaksi: ${taxi.kodeTransaksi}'),
        Text('Kode Penumpang: ${taxi.kodePenumpang}'),
        Text('Nama Penumpang: ${taxi.namaPenumpang}'),
        Text('Jenis Penumpang: ${taxi.jenisPenumpang}'),
        Text('Plat Nomor: ${taxi.platNomor}'),
        Text('Supir: ${taxi.supir}'),
        Text('Biaya Awal: Rp ${taxi.biayaAwal.toStringAsFixed(2)}'),
        Text('Biaya per Kilometer: Rp ${taxi.biayaPerKilometer.toStringAsFixed(2)}'),
        Text('Jumlah Kilometer: ${taxi.jumlahKilometer.toStringAsFixed(2)} km'),
        SizedBox(height: 20),
        Text(
          'Total Bayar: Rp ${taxi.totalBayar.toStringAsFixed(2)}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
