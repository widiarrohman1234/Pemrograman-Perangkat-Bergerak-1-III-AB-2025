// base class: Produk
base class Produk {
  final String nama;
  final double harga;

  Produk(this.nama, this.harga);

  void info() => print("Produk: $nama, Harga: $harga");
}

// Turunan: Barang Fisik
base class BarangFisik extends Produk {
  final double berat;
  BarangFisik(String nama, double harga, this.berat) : super(nama, harga);

  @override
  void info() => print("Barang fisik: $nama, Harga: $harga, Berat: $berat kg");
}

// Turunan: Produk Digital
base class ProdukDigital extends Produk {
  final int masaAktifHari;
  ProdukDigital(String nama, double harga, this.masaAktifHari)
    : super(nama, harga);

  @override
  void info() => print(
    "Produk Digital: $nama, Harga: Rp.$harga, Masa Aktif: $masaAktifHari hari",
  );
}

void main(){
  var p1=BarangFisik("Laptop", 15000000, 2.5);
  var p2 = ProdukDigital("Voucher Game", 50000, 30);

  p1.info();
  p2.info();
}
