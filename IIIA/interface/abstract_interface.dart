// interface + abstract: hanya kontrak, tanpa implementasi
abstract interface class Absensi {
  void catatJamMasuk(DateTime waktu);
  void catatJamKeluar(DateTime waktu);
}

// implementasi untuk pegawai tetap
class AbsensiTetap implements Absensi {
  @override
  void catatJamMasuk(DateTime waktu) {
    print("Pegawai tetap masuk pukul ${waktu.hour}:${waktu.minute}");
  }

  @override
  void catatJamKeluar(DateTime waktu) {
    print("Pegawai tetap pulang pukul: ${waktu.hour}:${waktu.minute}");
  }
}

// implementasi untuk pegawai magang
class AbsensiMagang implements Absensi {
  @override
  void catatJamMasuk(DateTime waktu) {
    print("Pegawai magang masuk pukul ${waktu.hour}:${waktu.minute}");
  }

  @override
  void catatJamKeluar(DateTime waktu) {
    print("Pegawai magang pulang pukul: ${waktu.hour}:${waktu.minute}");
  }
}

void main() {
  Absensi pegawaiTetap = AbsensiTetap();
  Absensi pegawaiMagang = AbsensiMagang();

  pegawaiTetap.catatJamMasuk(DateTime(2025, 9, 23, 8, 0));
  pegawaiTetap.catatJamKeluar(DateTime(2025, 9, 23, 17, 0));
  print("----");
  pegawaiMagang.catatJamMasuk(DateTime(2025, 09, 23, 09, 0));
  pegawaiMagang.catatJamKeluar(DateTime(2025, 09, 23, 20, 0));
}
