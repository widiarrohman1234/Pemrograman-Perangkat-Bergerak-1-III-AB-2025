import 'heavy_report.dart' deferred as heavy;

Future<void> main() async {
  print("Dashboard POS siap.");

  // Saat butuh laporan bulanan
  print("Memuat library laporan...");
  await heavy.loadLibrary();
  
  // Panggil fungsi yang memiliki jeda waktu
  heavy.loadMonthlyReport();
}
