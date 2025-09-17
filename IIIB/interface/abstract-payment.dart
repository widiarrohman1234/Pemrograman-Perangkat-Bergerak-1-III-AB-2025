// kelas abstrak: konsep umum pembayaran
abstract class Payment {
  void prosesPembayaran(double jumlah);
  void cetakStruk();
}

// Implementasi pemabyaran via Transfer Bank
class TransferBank extends Payment {
  @override
  void prosesPembayaran(double jumlah) {
    print("Pembayaran Rp.$jumlah diproses melalui tranfer bank");
  }

  @override
  void cetakStruk() {
    print("Struk transfer bank dicetak");
  }
}

// Implementasi pembayaran via E-Wallet
class EWallet extends Payment {
  @override
  void prosesPembayaran(double jumlah) {
    print("Pembayaran Rp.$jumlah diproses melalui E-Wallet");
  }

  @override
  void cetakStruk() {
    print("Struk transfer E-Wallet dicetak");
  }
}

void main(){
  Payment p1 = TransferBank();
  Payment p2 = EWallet();

  p1.prosesPembayaran(50000);
  p1.cetakStruk();

  p2.prosesPembayaran(1000000);
  p2.cetakStruk();

}
