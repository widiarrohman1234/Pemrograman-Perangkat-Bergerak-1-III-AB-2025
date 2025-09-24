// base class: produk
base class Produk {
  final String nama;
  final double harga;

  Produk(this.nama, this.harga);

  void info() => print("Produk: $nama, Harga Rp.$harga");
}

// turunan: barang fisik
base class BarangFisik extends Produk {
  final double berat;
  BarangFisik(String nama, double harga, this.berat) : super(nama, harga);

  @override
  void info() =>
      print("Barang fisik: $nama, harga: Rp.$harga, Berat: $berat Kg");
}

// turunan: produk digital
base class ProdukDigital extends Produk {
  final int masaAktifHari;
  ProdukDigital(String nama, double harga, this.masaAktifHari)
    : super(nama, harga);
  @override
  void info() {
    print(
      "Produk digital: $nama, Harga: Rp.$harga, Masa aktif: $masaAktifHari hari",
    );
  }
}

void main() {
  var p1 = BarangFisik("Laptop", 15000000, 2.5);
  var p2 = ProdukDigital("Voucher Game", 50000, 30);

  p1.info();
  print("---");
  p2.info();
}
