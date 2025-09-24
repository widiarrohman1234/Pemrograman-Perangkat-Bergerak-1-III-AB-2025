// interface pengiriman
interface class Pengiriman {
  void kirimBarang(String barang, String tujuan) {}
}

// Implementasi JNE
class JNE implements Pengiriman {
  @override
  void kirimBarang(String barang, String tujuan) {
    print("$barang dikirim ke $tujuan via JNE.");
  }
}

// implementasi Gojek
class GoSend implements Pengiriman {
  @override
  void kirimBarang(String barang, String tujuan) {
    print("$barang dikirim ke $tujuan via GoSend");
  }
}

void main() {
  Pengiriman kurir1 = JNE();
  Pengiriman kurir2 = GoSend();

  kurir1.kirimBarang("Laptop", "Jakarta");
  kurir2.kirimBarang("makanan", "Surabaya barat");
}
