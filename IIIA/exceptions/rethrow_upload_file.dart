void uploadFile(String fileName) {
  try {
    if (!fileName.endsWith(".pdf")) {
      throw Exception("Format file tidak didukung.");
    }
    print("✅ File $fileName berhasil diupload.");
  } catch (e) {
    print("📒 Log server: Upload gagal karena $e");
    rethrow; // diteruskan supaya UI tahu file gagal
  }
}

void main() {
  try {
    uploadFile("gambar.png");
  } catch (e) {
    print("⚠️ Notifikasi ke user: File gagal diupload. ($e)");
  }
}
