void main() {
  // var mahasiswa = ['Andi', 'Budi', 'Citra', 'Dewi', 'Widi', 'Tika', 'Kartika'];
  // print("mahasiswa.length = ${mahasiswa.length}");

  // print("Daftar Mahasiswa");
  // for loop
  // index itu SELALU dimulai dari angka 0;
  // for(var i = 0; i < mahasiswa.length; i++){
  //   print("Mahasiswa ke-${i+1}: ${mahasiswa[i]}");
  // }

  // for in
  // for (var mhs in mahasiswa){
  //   print("Nama: $mhs");
  // }

  /**
   * While loop
   */
  // var sks = 120;
  // 120 < 144 = TRUE
  // 120+24=144  < 144  = FALSE
  // Tipe data boolean = TRUE/FALSE;
  // int = 10;
  // String = "Kata yang mengandung teks";

  // while(sks < 144){
  //   print("SKS sekarang: $sks, masih belum cukup untuk lulus.");
  //   sks += 24;
  // }
  // print("Total SKS: $sks, mahasiswa siap lulus!");

  /**
   * Do-While loop
   */
  // var semester = 1;

  // do {
  //   print("Mahasiswa di semester $semester");
  //   semester++;
  // } while (semester <= 8);

  // 1 <= 8 : True
  // 8 <= 8 : True
  // 9 <= 8 : False
  // no | nama | ttl | dst
  // -  | -    |  -  | -

  // contoh lain di aplikasi mahasiswa
  // int? pilihan = 0;
  // do{
  //   print("1. Lihat daftar mahasiswa");
  //   print("2. Ubah daftar mahasiswa");
  //   print("3. Hapus daftar mahasiswa");
  //   print("4. Kembali");

  //   print("Pilih no: ");
  // }while( pilihan != 0);

  /**
 * Break and continue
 */
  // String cariMahasiswa = "Budi";
  // var mahasiswa = ['Andi', 'Budi', 'Citra', 'Dewi', 'Widi', 'Tika', 'Kartika'];

  // break (kesalahan contoh)
  // for (var mhs in mahasiswa) {
  //   if (mhs == cariMahasiswa) {
  //     print("Data ditemukan: $mhs");
  //     break;
  //   }
  //   print("Memeriksa: $mhs");
  // }

  //
  // for (var mhs in mahasiswa){
  //   if (mhs == "Yanto"){
  //     continue;
  //   }
  //   print("Mahasiswa: $mhs");
  // }

  // {keys: values}
  var angkatan = {
    2020: ['Andi', 'Budi', 'Yanto'],
    2021: ['Nisa', 'Faqih', 'Adinda'],
  };

  // ori
  outerLoop:
  for (var tahun in angkatan.keys) {
    for (var mhs in angkatan[tahun]!) {
      print("Angkatan $tahun - $mhs");
      if (mhs == 'Yanto') {
        print("Data ditermukan: $tahun - $mhs");
        break outerLoop;
      }
    }
  }

  print("===========");

  // exp:
  // for (var tahun in angkatan.keys) {
  //   for (var mhs in angkatan[tahun]!) {
  //     print("Angkatan $tahun - $mhs");
  //     if (mhs == 'Yanto') {
  //       print("Data ditermukan: $tahun - $mhs");
  //       break;
  //     }
  //   }
  //   break;
  // }
}
