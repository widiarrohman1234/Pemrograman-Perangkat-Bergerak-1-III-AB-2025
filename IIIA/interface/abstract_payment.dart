// kelas abstrak: konsep umum pembayaran
abstract class Payment {
  void prosesPembayaran(double jumlah);
  void cetakStruk();

  // void kirimNotif(){}
}

// implementasi pembayaran via tranfer bank
class TransferBank extends Payment {
  @override
  void prosesPembayaran(double jumlah) {
    print("Pembayaran Rp.$jumlah diproses melalui transfer bank.");
  }

  @override
  void cetakStruk() {
    print("Struk tranfer bank dicetak");
  }
}

// Implementasi pembayaran via E-Wallet
class EWallet extends Payment {
  @override
  void prosesPembayaran(double jumlah) {
    print("Pembayaran Rp.$jumlah diproses melalui transfer e-wallet.");
  }

  @override
  void cetakStruk() {
    print("Struk tranfer e-wallet dicetak");
  }
}

void main() {
  Payment p1 = TransferBank();
  Payment p2 = EWallet();

  p1.prosesPembayaran(50000);
  p1.cetakStruk();

  print("----");

  p2.prosesPembayaran(100000);
  p2.cetakStruk();
}
