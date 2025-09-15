// // main.dart
// import 'package:intl/date_symbol_data_local.dart';
// import 'utils.dart';

// void main() async {
//   // Pastikan data locale diinisialisasi untuk format tanggal dan mata uang
//   await initializeDateFormatting('id_ID', null);

//   // Menggunakan fungsi dari formatter.dart
//   double harga = 1500000.50;
//   print('Harga produk: ${formatCurrency(harga)}');

//   DateTime tanggalSekarang = DateTime.now();
//   print('Tanggal hari ini: ${formatDate(tanggalSekarang)}');

//   print('---');

//   // Menggunakan fungsi dari validator.dart
//   String email1 = 'contoh@email.com';
//   String email2 = 'salah_email.com';
//   print('Email valid? ${isValidEmail(email1)}');
//   print('Email valid? ${isValidEmail(email2)}');

//   print('---');

//   // Menggunakan fungsi dari calculator.dart
//   double hargaDiskon = calculateDiscount(100000, 20);
//   print('Harga setelah diskon: ${formatCurrency(hargaDiskon)}');
// }