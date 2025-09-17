// sealed: semua subclass harus didefinisikan di library yang sama
sealed class StatusPegawai {}

class PegawaiTetap extends StatusPegawai {}

class PegawaiKontrak extends StatusPegawai {}

class PegawaiMagang extends StatusPegawai {}

// HRD ingi mendekripsikan hak cuti berdasarkan status
String hakCuti(StatusPegawai s) => switch (s) {
  PegawaiTetap() => "Cuti tahunan: 12 hari",
  PegawaiKontrak() => "Cuti tahunan; 6 hari",
  PegawaiMagang() => "Tidak ada cuti tahunan",
};

void main() {
  var pegawai1 = PegawaiTetap();
  var pegawai2 = PegawaiMagang();

  print("Status 1 -> ${hakCuti(pegawai1)}");
  print("Status 2 -> ${hakCuti(pegawai2)}");
}
