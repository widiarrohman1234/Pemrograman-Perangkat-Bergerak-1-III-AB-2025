// import 'package:intl/intl.dart';
// import 'package:intl/date_symbol_data_local.dart';

// class DateHelper {
//   // static method: format tanggal ke bentuk "16 September 2025"
//   static String formatTanggal(DateTime time) {
//     return DateFormat('dd MMMM yyyy', 'id_ID').format(time);
//   }

//   // static method: format waktu ke bentuk "12:59"
//   static String formatWaktu(DateTime time) {
//     return DateFormat("HH:mm").format(time);
//   }
// }

// // Class Mahasiswa (contoh instance lain yang menggunakan static method)
// class Mahasiswa {
//   String nama;
//   DateTime tanggalDaftar;

//   // Constructor
//   Mahasiswa(this.nama, this.tanggalDaftar);

//   // method print data
//   void printData() {
//     print("Nama: $nama");
//     print("Tanggal Daftar: ${DateHelper.formatTanggal(tanggalDaftar)}");
//     print("Waktu Daftar: ${DateHelper.formatWaktu(tanggalDaftar)}");
//   }
// }

// // fungsi utama
// Future<void> main() async {
//   // inisialisasi local dulu
//   await initializeDateFormatting('id_ID', null);

//   //instace
//   var mhs = Mahasiswa("Widi Arrohman", DateTime(2025, 9, 16, 13, 04));
//   mhs.printData();
// }
