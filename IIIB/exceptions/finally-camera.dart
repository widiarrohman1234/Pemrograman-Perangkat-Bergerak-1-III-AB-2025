void bukaKamera(bool izin) {
  try {
    print("Membuka kamera...");
    // if (!izin) {
    if (izin == false) {
      throw Exception("Akses kamera ditolak!");
    }
    print("Foto berhasil diambil.");
  } catch (e) {
    print("Error kamera: $e");
  } finally {
    print("Kamera dimatikan.");
  }
}

void main() {
  // bukaKamera(false); // gagal
  bukaKamera(true);  // berhasil
}
