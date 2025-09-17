mixin Diskon {
  double hitungDiskon(double harga, double persen) {
    return harga - (harga * persen / 100);
  }
}

class Produk {
  String nama;
  double harga;
  Produk(this.nama, this.harga);
}

class ProdukDiskon extends Produk with Diskon{
  ProdukDiskon(String nama, double harga) : super(nama, harga);
}

void main(){
  var laptop = ProdukDiskon("Laptop", 10000000);
  print("Harga asli: Rp.${laptop.harga}");
  print("Harga setelah diskon 10%: Rp.${laptop.hitungDiskon(laptop.harga, 10)}");
}
