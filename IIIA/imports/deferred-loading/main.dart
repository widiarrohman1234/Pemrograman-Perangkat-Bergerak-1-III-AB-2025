import 'heavy_report.dart' deferred as heavy_report;

Future<void> main() async {
  print("Dashboard POS siap");

  // saat butuh laporan bulanan
  await heavy_report.loadLibrary();
  heavy_report.loadMonthlyReport();  

}