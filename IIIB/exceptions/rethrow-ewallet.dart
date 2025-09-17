void prosesPembayaran(double saldo, double nominal) {
  try {
    if (nominal > saldo) {
      throw Exception("Saldo tidak cukup untuk transaksi.");
    }
    print("✅ Pembayaran berhasil sebesar Rp$nominal");
  } catch (e) {
    print("📒 Catat log transaksi gagal: $e");
    rethrow; // tetap diteruskan agar aplikasi tahu pembayaran gagal
  }
}

void main() {
  try {
    prosesPembayaran(50000, 100000); // saldo kurang
  } catch (e) {
    print("⚠️ Notifikasi ke user: $e");
  }
}