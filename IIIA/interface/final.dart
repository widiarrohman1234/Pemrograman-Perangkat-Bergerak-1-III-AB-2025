// class final tidak boleh diwariskan/diimplementasikan
final class KartuPegawai {
  final String idPegawai;
  final String nama;

  KartuPegawai(this.idPegawai, this.nama);

  void scanMasuk() {
    print("Pegawai $nama dengan ID $idPegawai berhasil masuk.");
  }

  void scanKeluar() {
    print("Pegawai $nama dengan ID $idPegawai berhasil keluar.");
  }
}

void main(){
  var kartu1 = KartuPegawai("EMP001", "Widi");
  var kartu2 = KartuPegawai("EMP002", "Arrohman");

  kartu1.scanMasuk();
  kartu2.scanMasuk();

  kartu1.scanKeluar();
}
