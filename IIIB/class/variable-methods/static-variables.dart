class POS {
  // Static variable untuk semua transaksi (tidak berubah per instace)
  static const double ppn = 0.11; //11%

  String namaProduk;
  double harga;

  // constructor
  POS(this.namaProduk, this.harga);

  double hitungTotal() {
    return harga + (harga * ppn);
  }
}

void main() {
  var produk1 = POS("Mouse Wireless", 150000);
  var produk2 = POS("Keyboard Mechanical", 500000);

  print(
    "Produk 1: ${produk1.namaProduk}, Total Bayar: Rp.${produk1.hitungTotal()}",
  );
  print(
    "Produk 2: ${produk2.namaProduk}, Total Bayar: Rp.${produk2.hitungTotal()}",
  );

  // static bisa diakses langsung tanpa bikin objek
  print("PPN yang berlaku untuk semua transaksi ${POS.ppn * 100}%");
}
