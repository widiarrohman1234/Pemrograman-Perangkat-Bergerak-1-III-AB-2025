void login(String? username, String? password) {
  // validasi data kosong/null
  if (username == null || password == null) {
    throw FormatException("Username atau password tidak boleh null!");
  }
  if (username.isEmpty || password.isEmpty) {
    throw FormatException("Username atau password tidak boleh kosong!");
  }
  // validasi login
  if (username != "admin" || password != "1234") {
    throw Exception("Login gagal: Username atau password salah!");
  }

  // jika semua benar
  print("Login berhasil, selamat datang $username");
}

void main() {
  // === skenario 1: password null ===
  try {
    print("Coba login dengan password null: ");
    login("admin", "1234");
  } on FormatException catch (e) {
    print("Format data salah: $e");
  } on Exception catch (e) {
    print("Terjadi error: $e");
  } catch (e, s) {
    print("Error tidak dikenali: $e");
    print("StackTrace: $s\n");
  }

  // === Skenario 2: Username kosong ===
  try {
    print("\nCoba login dengan username kosong:");
    login("", "1234");
  } on FormatException catch (e) {
    print("Format data salah: $e\n");
  }

  // === Skenario 3: Username & password salah ===
  try {
    print("Coba login dengan user salah:");
    login("user", "0000");
  } on Exception catch (e) {
    print("Terjadi error: $e\n");
  }

  // === Skenario 4: Login benar ===
  try {
    print("Coba login dengan data benar:");
    login("admin", "1234");
  } catch (e) {
    print("Tidak seharusnya error: $e");
  }
}
