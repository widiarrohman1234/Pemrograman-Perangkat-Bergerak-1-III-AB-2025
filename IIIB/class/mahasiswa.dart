class Mahasiswa {
  String nama;
  int nim;
  final DateTime tanggalDaftar = DateTime.now();

  // Constuctor
  Mahasiswa(this.nama, this.nim);
}

void main(){
  var mhs = Mahasiswa("Widi", 1334800006);
  print('Nama: ${mhs.nama}, NIM: ${mhs.nim}. Tgl Daftar: ${mhs.tanggalDaftar}');
}
