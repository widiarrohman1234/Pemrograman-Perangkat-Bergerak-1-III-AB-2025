// ==========================
// 1. Variabel dengan var dan tipe data
// ==========================
void main() {
  // var → tipe otomatis ditentukan dari nilai awal
  // var nama = "Budi";       // otomatis String
  // int umur = 20;           // tipe ditentukan manual
  // umur = 21;
  // double gaji = 4500000.5; // bilangan desimal

  // print("Nama: $nama, Umur: $umur, Gaji: Rp.$gaji");

  // ==========================
  // 2. Null Safety
  // ==========================
  // String? alamat;  // nullable → bisa null
  // String kota = "Jakarta"; // non-nullable → wajib ada isi
  // print("Alamat: $alamat, Kota: $kota");

  // ==========================
  // 3. Default Value
  // ==========================
  // int? jumlah; // nullable → otomatis null
  // print("Jumlah awal: $jumlah");

  // int jumlah2; // ❌ ERROR → harus langsung diberi nilai
  // int jumlah2 = 0; // ✅ benar

  // ==========================
  // 4. Late Variable
  // ==========================
  // late String deskripsi;
  // deskripsi = "Ini contoh laporan saya";
  // print(deskripsi);

  // late String belumIsi;
  // print(belumIsi); // ❌ ERROR → belum diisi tapi dipakai

  // ==========================
  // 5. Final dan Const
  // ==========================

  // final → nilainya bisa runtime, tapi hanya bisa diisi sekali
  // final tanggalCetak = DateTime.now(); // ✅ benar
  // print("Tanggal Cetak: $tanggalCetak");

  // tanggalCetak = DateTime.now(); // ❌ ERROR → final tidak bisa diubah

  // const → harus konstan sejak compile-time
  const pi = 3.14; // ✅ benar
  print("Nilai pi: $pi");

  // const tanggalSekarang = DateTime.now(); // ❌ ERROR → DateTime.now() bukan konstan
  // final tanggalSekarang = DateTime.now(); // ✅ benar
  // print("waktu tanggal sekarang: $tanggalSekarang");

  // ==========================
  // 6. Wildcard Variable (_)
  // ==========================

  // Contoh dalam loop
  // for (var _ in [1, 2, 3]) {
  //   print("Loop jalan"); // nilai 1,2,3 diabaikan
  // }

  // Contoh dalam error handling
  // try {
  //   throw "Terjadi Error!";
  // } catch (_) {
  //   print("Error terjadi, tapi detailnya diabaikan"); // _ = placeholder
  // }

  // Wildcard + final
  // final _ = "tidak dipakai"; // ✅ benar
  // print(_); // ❌ walaupun disimpan, sebaiknya tidak dipakai

  // Wildcard + const
  const a = 44; // ✅ benar
  // a = 45; //tidak bisa ditimpa kembali
  print(a);   // ❌ tidak dianjurkan untuk dipakai
}