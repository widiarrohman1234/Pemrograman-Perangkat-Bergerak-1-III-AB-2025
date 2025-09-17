import '../main.dart';

class POS {
  // Static variable untuk semua transaksi (tidak berubah per instance)
  static const double ppn = 0.11; //11%

  String namaProduk;
  double harga;

  // Constructor
  POS(this.namaProduk, this.harga);

  // Method menghitung total
  double hitungTotal() {
    return harga + (harga * ppn);
  }
}

void main() {
  // instance
  var produk1 = POS("Mouse Wireless", 150000);
  var produk2 = POS("Keyboard Mecahnical", 500000);

  print(
    "Produk1: ${produk1.namaProduk}, Total Bayar: Rp.${produk1.hitungTotal()}",
  );
  print(
    "Produk2: ${produk2.namaProduk}, Total Bayar: Rp.${produk2.hitungTotal()}",
  );

  // Static bisa diakses langsung tanpa bikin objek
  print("PPN yang berlaku untuk semua transaksi: ${POS.ppn * 100}%");

  // kalau ppn tidak pakai static
  // var contoh = POS("baju", 50000);
  // print(contoh.ppn);
}
