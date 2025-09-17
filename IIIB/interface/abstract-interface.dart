// Interface + Abstract: hanya kontrak, tanpa implementasi
abstract interface class Absensi {
  void catatJamMasuk(DateTime waktu);
  void catatJamKeluar(DateTime waktu);
}

// Implementasi untuk Pegawai Tetap
class AbsensiTetap implements Absensi {
  @override
  void catatJamMasuk(DateTime waktu) {
    print("Pegawai tetap masuk pukul ${waktu.hour}:${waktu.minute}");
  }

  @override
  void catatJamKeluar(DateTime waktu) {
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
  void catatJamKeluar(DateTime waktu) {
    print("Pegawai magang pulang pukul ${waktu.hour}:${waktu.minute}");
  }
}

void main() {
  Absensi pegawaiTetap = AbsensiTetap();
  Absensi pegawaiMagang = AbsensiMagang();

  pegawaiTetap.catatJamMasuk(DateTime(2025, 8, 26, 8, 0));
  pegawaiTetap.catatJamKeluar(DateTime(2025, 8, 26, 17, 0));

  pegawaiMagang.catatJamMasuk(DateTime(2025, 8, 26, 9, 0));
  pegawaiMagang.catatJamKeluar(DateTime(2025, 8, 26, 15, 0));
}

