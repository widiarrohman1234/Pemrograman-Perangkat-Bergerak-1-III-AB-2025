// =======================================
// 1. Fungsi biasa
// int hitungUmurTahunLahir(int tahunLahir) {
//   return 2025 - tahunLahir;
// }

// 2. Arrow function
// int tambah(int a, int b) => a + b;

// 3. Fungsi dengan named parameter (ada default & required)
void cetakMahasiswa({
  required String nama,
  int umur = 18,
  String jurusan = "TI",
}) {
  // hasil bukan sebuah return, maka tipe adalah void
  print("Nama: $nama, Umur: $umur, Jurusan: $jurusan");
}

// 4. Fungsi sebagai variabel
// var tampil = (String nama) => print("Mahasiswa: $nama");

// 5. Fungsi sebagai argumen
void cetakListMahasiswa(List<String> daftar){
  daftar.forEach((mhs) => print("Halo, $mhs"));
}

// 6. Fungsi main sebagai titik awal
void main() {
  print("=== Program Pendataan Mahasiswa ===");
  // int tahunLahir = 2000;

  // Fungsi biasa
  // print("Umur Budi: ${hitungUmurTahunLahir(tahunLahir)} tahun");

  // Arrow function
  // print("Hasil tambah 5 + 7 = ${tambah(5, 7)}");
  // int j = 9;
  // int k = 7;
  // print("Hasil Tambah $j+$k = ${tambah(j,k)}");

  // Fungsi dengan named parameter
  // cetakMahasiswa(nama: "Santoso", umur: 18, jurusan: "Perhotelan");
  // cetakMahasiswa(nama: "Agus Salim");

  // Fungsi sebagai variabel
  // tampil("Yasalam");

  // Fungsi sebagai argumen
  // var daftar = ["Lina", "Dewi", "Arif"];
  // cetakListMahasiswa(daftar);
  var daftar = ["Lina","Dewi", "Arif", "Widi"];
  cetakListMahasiswa(daftar);

}
