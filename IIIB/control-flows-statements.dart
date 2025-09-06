void main() {
  //                  0,    1,        2,      3,      4
  // var mahasiswa = ['Andi', 'Budi', 'Citra', 'Dewi', "Widi"]; // array
  // print("mahasiswa.length: ${mahasiswa.length}");
  // print("mahasiswa index ke-3: ${mahasiswa[3]}");

  // print("Daftar Mahasiswa:");
  // // index, itu selalu dari 0
  // for (var i = 0; i < mahasiswa.length; i++) {
  //   print("Mahasiswa ke-${i+1}: ${mahasiswa[i]}");
  // }

  /**
   * For-in loop
   */
  // for (var mhs in mahasiswa){
  //   print("Nama: $mhs");
  // }

  /**
   * While-loop
   */
  // var sks = 120;
  // sks += 1;
  // sks += 2;
  // print("SKS: $sks"); //123

  // while (sks < 144){
  //   print("SKS sekarang: $sks, masih belum cukup untuk lulus.");
  //   sks += 24; //Tambah SKS
  // }

  // print("Total SKS: $sks, mahasiswa siap lulus.");

  /**
   * Do-While loop
   */
  // contoh lain di aplikasi mahasiswa
  // int? pilihan = 0;
  // do {
  //   print("1. Lihat daftar mahasiswa");
  //   print("2. Ubah daftar mahasiswa");
  //   print("3. Hapus daftar mahasiswa");
  //   print("4. Kembali");

  //   print("Silahkan pilih: ");
  // } while (pilihan != 0);

  /**
 * Break and Continue
 */
  var mahasiswa = ['Andi', 'Budi', 'Citra', 'Dewi', "Widi"]; // array

  // // break: contoh pencarian
  // String cari = "Dewi";
  // for (var mhs in mahasiswa) {
  //   print("mhs: $mhs");
  //   if (mhs == cari) {
  //     print("Nama Mahasiswa $cari, sudah ditemukan.");
  //     break; //hentikan loop
  //   }
  // }

  // continue
  // String loncati = "Citra";
  // for (var data in mahasiswa) {
  //   if (data == loncati) {
  //     continue; // lompat, tidak diproses
  //   }
  //   print("Mahasiswa: $data");
  // }

  /**
 * 1+1=2
 * 2-1=1
 * 3*4=12
 * 12/3=4
 * 10%2=0
 * 10%5=0
 * 11%5=1
 */

  // contoh continue lainnya
  // bilangan genap
  // int? maxValue; //nullable (boleh kosong)
  // maxValue = 20;
  // for (int i = 1; i <= maxValue; i++) {
  //   /**
  //    * 1 % 2 = 1 -> != 0 maka continue
  //    * 2 % 2 = 0 -> print
  //    * 3 % 2 = 1 -> != 0 maka continue
  //    * 4 % 2 = 0 -> print
  //    * 5 % 2 = 1 -> != 0 maka continue
  //    * 6 % 2 = 0 -> print
  //    */
  //   if(i % 2 != 1){
  //     continue;
  //   }
  //   //tampilkan nilai i;
  //   print(i);
  // }

  // Nested Loop: outerLoop
  // format= keys:value
  // var angkatan = {
  //   2020: ['Andi', 'Budi', 'Yasmin'],
  //   2021: ['Citra', 'Dewi', 'Yoki'],
  // };
  // print('Angkatan.keys: ${angkatan.keys}');

  // String cariNama = "Yoki";
  // outerLoop:
  // for (var tahun in angkatan.keys) {
  //   // print("Tahun: $tahun");
  //   for (var mhs in angkatan[tahun]!) {
  //     // print("Angkatan: $tahun, mhs: $mhs");
  //     if (mhs == cariNama) {
  //       print("Data ditemukan: $mhs - $tahun");
  //       break outerLoop; // hentikan looping, jika sudah ditemukan
  //     }
  //     // break;
  //   }
  //   // break;
  // }
}
