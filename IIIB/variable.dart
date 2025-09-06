

// ==========================
// 1. Variabel dengan var dan tipe data
// ==========================
void main() {
  // var → tipe otomatis ditentukan dari nilai awal
  // var nama = "Widi";       // otomatis String
  // int umur = 17;           // tipe ditentukan manual
  // double gaji = 4500000.5; // bilangan desimal

  // print("Nama: $nama, Umur: $umur, Gaji: Rp.$gaji");

  // ==========================
  // 2. Null Safety
  // ==========================
  // String? alamat;  // nullable → bisa null
  // String kota = "Jakarta"; // non-nullable → wajib ada isi
  // alamat = "Jln.Jalan";
  // int? noRumah = 56;
  // print("Alamat: $alamat, no: $noRumah, Kota: $kota");

  // ==========================
  // 3. Default Value
  // ==========================
  // int? jumlah; // nullable → otomatis null
  // int defaultValue = 0;
  // print("Jumlah awal: $defaultValue");

  // int jumlah2; // ❌ ERROR → harus langsung diberi nilai
  // int jumlah2 = 0; // ✅ benar

  // ==========================
  // 4. Late Variable
  // ==========================
  // late String deskripsi; // non-nullable (WAJIB DIISI)
  // deskripsi = "Ini contoh laporan";
  // print(deskripsi);

  // late String belumIsi;
  // print(belumIsi); // ❌ ERROR → belum diisi tapi dipakai

  // String bacaSensor() {
  //   return "37 °C";
  // }

  // late String suhu = bacaSensor(); // fungsi hanya jalan kalau dipanggil
  // print(suhu);


  // ==========================
  // 5. Final dan Const
  // ==========================

  // final → nilainya bisa runtime, tapi hanya bisa diisi sekali
  // final tanggalCetak = DateTime.now(); // ✅ benar
  // print("Tanggal Cetak: $tanggalCetak");

  // tanggalCetak = DateTime.now(); // ❌ ERROR → final tidak bisa diubah

  // const → harus konstan sejak compile-time
  // const pi = 3.14; // ✅ benar
  // print("Nilai pi: $pi");

  // const tanggalSekarang = DateTime.now(); // ❌ ERROR → DateTime.now() bukan konstan
  // final tanggalSekarang = DateTime.now(); // ✅ benar

  // ==========================
  // 6. Wildcard Variable (_)
  // ==========================

  // Contoh dalam loop
  // for (var _ in [1, 2, 3]) {
  //   print("Loop jalan _"); // nilai 1,2,3 diabaikan
  // }

  // Contoh dalam error handling
  // try {
  //   throw "Terjadi Error!";
  // } catch (_) {
  //   print("Error terjadi, tapi detailnya diabaikan"); // _ = placeholder
  // }

  // Wildcard + final
  final _ = "tidak dipakai"; // ✅ benar
  // print(_); // ❌ walaupun disimpan, sebaiknya tidak dipakai

  // Wildcard + const
  // const _ = 42; // ✅ benar
  // print(_);   // ❌ tidak dianjurkan untuk dipakai
}
