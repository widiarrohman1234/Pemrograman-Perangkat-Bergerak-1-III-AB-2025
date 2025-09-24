String fetchDataFromAPI(String endpoint) {
  try {
    if (endpoint != "/data") {
      throw Exception("Endpoint tidak ditemukan.");
    }
    return "Data berhasil diambil.";
  } catch (e) {
    print("📒 Log developer: Error saat fetch data - $e");
    rethrow; // biar caller bisa handle
  }
}

void main() {
  try {
    var result = fetchDataFromAPI("/wrong-endpoint");
    print(result);
  } catch (e) {
    print("⚠️ Notifikasi ke user: Server error");
  }
}
