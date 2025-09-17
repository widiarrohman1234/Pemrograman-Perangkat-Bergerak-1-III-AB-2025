// Data kartu kredit
class KartuKredit{
  String nomor; // 1234-4567-...
  String namaPemilik;
  String cvv;

  KartuKredit(this.nomor, this.namaPemilik, this.cvv);

}

// superclass pembayaran
class Pembayaran {
  void prosesPembayaran(covariant Object methode){
    print("Memproses pembayaran dengan metode umum...");
  }
}

// subclass khusus pembayaran kartu kredit
class PembayaranKartu extends Pembayaran{
  @override
  void prosesPembayaran(covariant KartuKredit kartu) {
    print("Pembayaran dengan kartu kredit");
    print("Nomor: ${kartu.nomor}");
    print("Nama: ${kartu.namaPemilik}");
    print("CVV: ${kartu.cvv}");
  }
}

void main(){
  var pembayaran = Pembayaran();
  pembayaran.prosesPembayaran("E-wallet"); // Masih diterima di superclass

  var pembayaranKartu = PembayaranKartu();
  var kartu = KartuKredit("1234-5678-9876-5432", "Budi Santoso", "123");
  pembayaranKartu.prosesPembayaran(kartu);
}