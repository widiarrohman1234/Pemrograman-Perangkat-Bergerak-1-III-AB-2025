// ini komentar satu baris.

/// Ini digunakan untuk komentar dokumentasi
/// yang membutuhkan baris yang sangat panjang.
/// Biasanya ada didalam library atau fungsi
/// yang sangat komplek dan panjang.

/**
 * ini juga komentar untuk banyak baris
 * yang biasa digunakan untuk menjelaskan
 * fungsi yang memiliki lebih dari tiga
 * parameter untuk melakukan proses
 * perhitungan.
 */

void main() {
  // Menjalankan contoh komentar satu baris
  contohSingleLine();

  // Menjalankan contoh komentar multi-baris
  contohMultiLine();

  // Membuat objek mahasiswa dan menampilkan datanya
  var mhs = Mahasiswa("Siti", 19);
  mhs.tampilkanData();
}

// =======================
// Single-line comment
// =======================
void contohSingleLine() {
  // Cetak salam untuk mahasiswa
  print("Halo Mahasiswa!");
}

// =======================
// Multi-line comment
// =======================
void contohMultiLine() {
  /*
    Fungsi ini hanya untuk contoh
    penggunaan komentar multi-baris.
    Bisa dipakai untuk dokumentasi panjang.
  */
  print("Ini contoh komentar multi-baris.");
}


// =======================
// Documentation comment
// =======================

/// Class Mahasiswa digunakan untuk menyimpan data mahasiswa
class Mahasiswa {
  String? nama;
  int? umur;

  /// Konstruktor mahasiswa
  Mahasiswa(this.nama, this.umur);

  /// Menampilkan data mahasiswa ke layar
  void tampilkanData() {
    print("Nama: $nama, Umur: $umur");
  }
}

