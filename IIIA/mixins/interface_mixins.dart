// interface (kontrak)
abstract interface class Pembayaran {
  void prosesPembayaran(double jumlah);
}

// Mixin yang mengimplementasikan interface
mixin MetodeKartu implements Pembayaran {
  @override
  void prosesPembayaran(double jumlah) {
    print(
      "Pembayaran sebesar Rp.$jumlah menggunakan Kartu Kredit/Debit diproses....",
    );
  }

  void validasiKartu(String nomorKartu) {
    print("Nomor kartu $nomorKartu berhasil divalidasi");
  }
}

class Merchant with MetodeKartu{
  final String nama;
  Merchant(this.nama);
}

void main(){
  var toko = Merchant("Toko elektronik");
  toko.validasiKartu("1234-5678-9012-3456");
  toko.prosesPembayaran(2500000);
}