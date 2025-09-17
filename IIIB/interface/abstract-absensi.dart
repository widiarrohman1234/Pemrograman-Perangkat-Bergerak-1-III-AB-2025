abstract interface class Absensi {
  void catatJamMasuk(DateTime waktu);
  void catatJamkeluar(DateTime waktu);
}

// Implementasi untuk Pegawai tetap
class AbsensiTetap implements Absensi {
  @override
  void catatJamMasuk(DateTime waktu) {
    print("Pegawai tetap masuk pukul ${waktu.hour}:${waktu.minute}");
  }

  @override
  void catatJamkeluar(DateTime waktu) {
    print("Pegawai tetap pulang pukul ${waktu.hour}:${waktu.minute}");
  }
}

// Implementasi untuk Pegawai Magang
class AbsensiMagang implements Absensi {
  @override
  void catatJamMasuk(DateTime waktu) {
    print("Pegawai magang masuk pukul ${waktu.hour}:${waktu.minute}");
  }

  @override
  void catatJamkeluar(DateTime waktu) {
    print("Pegawai magang pulang pukul ${waktu.hour}:${waktu.minute}");
  }
}

void main() {
  Absensi pegawaiTetap = AbsensiTetap();
  Absensi pegawaiMagang = AbsensiMagang();

  pegawaiTetap.catatJamMasuk(DateTime(2025, 9, 17, 03, 36));
  pegawaiMagang.catatJamMasuk(DateTime(2025, 9, 17, 12, 30));

  pegawaiTetap.catatJamkeluar(DateTime(2025, 9, 17, 17, 36));
  pegawaiMagang.catatJamkeluar(DateTime(2025, 9, 17, 17, 30));
}
