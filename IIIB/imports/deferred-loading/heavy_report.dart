library heavy_report;

void loadMonthlyReport() async {
  print("Laporan Bulanan: Memuat data ribuan transaksi...");

  await Future.delayed(Duration(seconds: 3));

  print("Laporan Bulanan: Data berhasil dimuat!");
}
