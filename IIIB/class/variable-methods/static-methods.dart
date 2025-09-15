import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DateHelper {
  //static method: format tanggal ke bentuk "10 September 2025"
  static String formatTanggal(DateTime date) {
    return DateFormat('dd MMMM yyyy', 'id_ID').format(date);
  }

  // static method: format waktu ke bentuk "14:09"
  static String formatWaktu(DateTime date) {
    return DateFormat('HH:mm').format(date);
  }
}

class Mahasiswa {
  String nama;
  DateTime tanggalDaftar;

  // Constructor
  Mahasiswa(this.nama, this.tanggalDaftar);

  // fungsi print data
  void printData() {
    print("Nama: $nama");
    print("Tanggal Daftar: ${DateHelper.formatTanggal(tanggalDaftar)}");
    print("Waktu Daftar: ${DateHelper.formatWaktu(tanggalDaftar)}");
  }
}

Future<void> main() async {
  // inisialisasi local dulu
  await initializeDateFormatting('id_ID', null);

  var mhs = Mahasiswa("Widi", DateTime(2025, 9, 10, 14, 13));
  mhs.printData(); // Memanggil static method dari DateHelper
}
