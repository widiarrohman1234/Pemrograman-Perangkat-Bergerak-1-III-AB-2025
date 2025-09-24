Future<String> ambilDataAbsensiHarian() async {
  await Future.delayed(Duration(seconds: 3));
  return "Data absensi tanggal 23 September berhasil diambil";
}

Future<String> ambilDataAbsensiBulanan() async {
  await Future.delayed(Duration(seconds: 5));
  return "Data absensi bulan September berhasil diambil";
}

// synchronous
// void main(){
// }

// asynchronous
Future<void> main() async {
  print("Mengambil data absensi ....");

  var bulanan = await ambilDataAbsensiBulanan(); // 5 detik
  print(bulanan);

  var hasil = await ambilDataAbsensiHarian(); // 3 detik
  print(hasil);



  print("Proses selesai.");
}
