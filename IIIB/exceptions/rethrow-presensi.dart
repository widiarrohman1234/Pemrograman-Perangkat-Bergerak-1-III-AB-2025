void cekPresensi(String nama) {
  try {
    if (nama != "Widi") {
      throw Exception("Data presensi tidak ditemukan");
    }
    print("$nama tercatat hadir.");
  } catch (e) {
    print("Log error: ${e.toString()}");
    rethrow; //diterukan ke pemanggil
  }
}

void main() {
  try {
    cekPresensi("Arrohman");
  } catch (e) {
    print("HRD menangai error: $e");
  }
}
