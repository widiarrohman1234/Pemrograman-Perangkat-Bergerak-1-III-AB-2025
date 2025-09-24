// superclass
class Produk {
  String nama;
  double harga;

  Produk(this.nama, this.harga);

  // method bisa dioverride
  double hargaAkhir() {
    return harga;
  }
}

// subclass
class produkDiskon extends Produk {
  double diskon; // dalam persen

  produkDiskon(String nama, double harga, this.diskon) : super(nama, harga);

  @override
  double hargaAkhir() {
    double potongan = harga * (diskon / 100);
    return harga - potongan;
  }
}

void main(){
  var produk1 = Produk("Laptop", 10000000);
  print("${produk1.nama} -> harga normal Rp.${produk1.hargaAkhir()}");

  var produk2 = produkDiskon("Iphone 17", 20000000, 20);
  print("${produk2.nama} -> Harga setelah diskon Rp.${produk2.hargaAkhir()}");
}
