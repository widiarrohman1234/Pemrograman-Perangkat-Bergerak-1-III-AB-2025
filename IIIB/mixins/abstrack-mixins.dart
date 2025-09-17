// Mixin dengan method abstrack
mixin Authenticator {
  bool login(String username, String password); //abstrak

  // logout
  void logout() => print("User berhasil logout");
}

// Implementasi untuk sistem login Admin
class AdminSystem with Authenticator {
  @override
  bool login(String username, String password) {
    // pengecekan akun
    if (username == "admin" && password == "1234") {
      print("Admin berhasil login");
      return true;
    }

    print("Login admin gagal");
    return false;
  }
}

void main(){
  var admin = AdminSystem();
  admin.login("admin", "12341");
  admin.logout();
}
