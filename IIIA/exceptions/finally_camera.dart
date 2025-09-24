void bukaKamera(bool izin) {
  try {
    print("Membuka kamera...");
    // gerbang logika = not
    // izin = false => !izin = true
    // izin = true => !izin = false

    // if(!izin){
    if (izin == false) {
      throw Exception("Akses kamera ditolak!");
    }
    print("Kamera dihidupkan dan ambil gambar");
  } catch (e) {
    print("error kamera: $e");
  } finally {
    print("Kamera dimatikan");
  }
}

void main() {
  bukaKamera(false); // gagal
  print("----");
  bukaKamera(true); // berhasil
}
