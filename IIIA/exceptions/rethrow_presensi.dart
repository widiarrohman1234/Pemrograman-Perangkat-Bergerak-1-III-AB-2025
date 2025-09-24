void cekPresensi(String nama) {
  try {
    if (nama != "Budi") {
      throw Exception("Data presensi tidak ditemukan");
    }
    print("$nama tercatat hadir.");
  } catch (e) {
    print("Log error: ${e.toString()}");
    rethrow; // diteruskan ke pemanggil
  }
}

void main(){
  try {
    cekPresensi("Andi");
  } catch (e) {
    print("HRD menangai error: $e");
  }
}
