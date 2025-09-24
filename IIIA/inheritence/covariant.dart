// Data kartu kredit
class KartuKredit {
  String nomor; //1234-4567-8901-2345
  String namaPemilik;
  String cvv;
  // constructor
  KartuKredit(this.nomor, this.namaPemilik, this.cvv);
}

// Superclass pembayaran
class Pembayaran {
  void prosesPembayaran(covariant Object metode) {
    print("Memproses pembayaran dengan metode umum....");
  }
}

// subclass khusus pembayaran kartu kredit
class PembayaranKartu extends Pembayaran {
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
  pembayaran.prosesPembayaran("E-Wallet");

  var pembayaranKartu = PembayaranKartu();
  var kartu = KartuKredit("1234-5678-9012-3456", "Widi Arrohman", "561");
  pembayaranKartu.prosesPembayaran(kartu);
}