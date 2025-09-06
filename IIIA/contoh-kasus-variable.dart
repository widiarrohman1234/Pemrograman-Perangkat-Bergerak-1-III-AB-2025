/**
 * Contoh data karyawan
 */
// void main() {
//   var nama = "Ani";
//   nama += " Susilawati";
//   int umur = 25;
//   umur = 26;
//   final jabatan = "Staff IT";
//   // jabatan = "OB"; //❌ tidak bisa;
//   const perusahaan = "TechnoCorp";
//   // perusahaan = "Politap"; //❌const tidak bisa di timpa (assigned)

//   print("$nama, umur $umur, bekerja sebagai $jabatan di $perusahaan");
// }


void main() {
  late String lokasiKantor;
  lokasiKantor = "Ketapang";

  final waktuAbsen = DateTime.now();
  // waktuAbsen = DateTime.now(); // ❌ final, tidak bisa di assigned

  print("Absen dicatat di $lokasiKantor pada $waktuAbsen");
}


