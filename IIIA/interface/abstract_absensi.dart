abstract class Absensi {
  void catatKehadiran(String nama);
}

// absensi dengan fingerprint
class FingerprintAbsensi extends Absensi {
  @override
  void catatKehadiran(String nama) {
    print("Pegawai $nama absen menggunakan fingerprint.");
  }
}

// absensi dengan RFID
class RFIDAbsensi extends Absensi {
  @override
  void catatKehadiran(String nama) {
    print("Pegawai $nama absen menggunakan RFID.");
  }
}

// absensi dengan mobile
class MobileAbsensi extends Absensi {
  @override
  void catatKehadiran(String nama) {
    print("Pegawai $nama absen menggunakan mobile.");
  }
}

void main(){
  var absensi1 = FingerprintAbsensi();
  var absensi2 = RFIDAbsensi();
  var absensi3 = MobileAbsensi();

  absensi1.catatKehadiran("Budi");
  absensi2.catatKehadiran("Siti");
  absensi3.catatKehadiran("Andi");
}
