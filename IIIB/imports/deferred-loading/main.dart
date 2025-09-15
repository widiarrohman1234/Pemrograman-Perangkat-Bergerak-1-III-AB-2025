import 'heavy_report.dart' deferred as heavy;

Future<void> main() async {
  print("Dashbord POS siap.");

  // saat butuh laporan bulanan
 await heavy.loadLibrary();
 heavy.loadMonthlyReport();
}