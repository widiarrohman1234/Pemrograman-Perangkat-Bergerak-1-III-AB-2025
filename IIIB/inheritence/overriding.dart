class Produk {
  String nama;
  double harga;

  // construktor
  Produk(this.nama, this.harga);

  // Method bisa override
  double hargaAkhir(){
    return harga;
  }
}

// subclass
class ProdukDiskon extends Produk {
  double diskon; //dalam persen
  ProdukDiskon(String nama, double harga, this.diskon) : super(nama, harga);

  @override
  double hargaAkhir(){
    double potongan = harga * (diskon / 100);
    return harga-potongan;
  }

}

// main
void main(){
 var produk1 = Produk("Laptop", 10000000);
 print("${produk1.nama} -> Harga normal: Rp.${produk1.hargaAkhir()}");

 var produk2 = ProdukDiskon("Smartphone", 5000000, 20);
 print("${produk2.nama} -> Harga setelah diskon: Rp.${produk2.hargaAkhir()}");
}