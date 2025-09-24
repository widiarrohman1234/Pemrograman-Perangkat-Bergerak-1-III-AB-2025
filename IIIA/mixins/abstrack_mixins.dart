mixin Authenticator {
  bool login(String username, String password); //abstack

  void logout() => print("Admin berhasil logout");
}

// implementasi untuk sistem login admin
class AdminSystem with Authenticator {
  @override
  bool login(String username, String password) {
    if (username == 'admin' && password == '1234') {
      print("Admin berhasil login");
      return true;
    }

    print("login admin gagal");
    return false;
  }
}

void main() {
  var admin = AdminSystem();
  admin.login("admin", "1234");
  admin.logout();
}
