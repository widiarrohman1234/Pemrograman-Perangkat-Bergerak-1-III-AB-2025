Future<String> ambilDataAbsensi() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data absensi tanggal 17 September berhasil diambil";
}

Future<void> main() async {
  print("Mengambil data absensi");
  var hasil = await ambilDataAbsensi(); // menunggu hasil
  print(hasil);
  print("Proses selesai");
}
