class Mahasiswa {
  String nama;
  int nim;
  final DateTime tanggalDaftar = DateTime.now();

  // constuctor
  Mahasiswa(this.nama, this.nim);
}

void main(){
  // instance
 var mhs = Mahasiswa("Widi Arrohman", 3114200006);
 print("Nama: ${mhs.nama}, NIM: ${mhs.nim}, Tgl Daftar: ${mhs.tanggalDaftar}");
}
