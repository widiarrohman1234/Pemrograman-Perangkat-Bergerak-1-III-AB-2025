mixin Logger {
  void log(String message) {
    var waktu = DateTime.now();
    print("[$waktu] $message");
  }
}


class User {
  String username;
  String password;

  User(this.username, this.password);
}

class AuthService extends User with Logger {
  AuthService(String username, String password) : super(username, password);

  bool login() {
    if (username == "admin" && password == "admin123") {
      log("Login berhasil untuk user: $username");
      return true;
    } else {
      log("Login gagal untuk user: $username");
      return false;
    }
  }
}


void main() {
  var auth = AuthService("admin", "admin123");
  auth.login();

  var auth2 = AuthService("uiaaaa", "salah");
  auth2.login();
}