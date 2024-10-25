class Taxi {
  final String kodeTransaksi;
  final String kodePenumpang;
  final String namaPenumpang;
  final String jenisPenumpang;
  final String platNomor;
  final String supir;
  final double biayaAwal;
  final double biayaPerKilometer;
  final double jumlahKilometer;
  late double totalBayar;

  Taxi({
    required this.kodeTransaksi,
    required this.kodePenumpang,
    required this.namaPenumpang,
    required this.jenisPenumpang,
    required this.platNomor,
    required this.supir,
    required this.biayaAwal,
    required this.biayaPerKilometer,
    required this.jumlahKilometer,
  }) {
    totalBayar = hitungTotalBayar();
  }

  double hitungTotalBayar() {
    double kilometerDikenakanBiaya = jumlahKilometer;

    if (jenisPenumpang == "VIP" && jumlahKilometer > 5) {
      kilometerDikenakanBiaya -= 5; // Gratis 5 km
    } else if (jenisPenumpang == "GOLD" && jumlahKilometer > 2) {
      kilometerDikenakanBiaya -= 2; // Gratis 2 km
    }

    return biayaAwal + (biayaPerKilometer * kilometerDikenakanBiaya);
  }
}
