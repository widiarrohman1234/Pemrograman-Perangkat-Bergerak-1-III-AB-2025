// Superclass
class User {
  String username;
  String password;

  User(this.username, this.password);

  List<Map<String, String>> dataUser = [
    {'usernameDB': 'Admin', 'passwordDB': "Admin1234"},
    {'usernameDB': 'User', 'passwordDB': "User1234"},
  ];

  void login() {
    bool successLogin = false;
    for (var element in dataUser) {
      if (username == element['usernameDB'] && password == element['passwordDB']) {
        print("User $username berhasil login.");
        successLogin = true;
        break; //hentikan loop setelah berhasil login
      }
    }
    if(successLogin == false){ // bisa disingkat menjadi !successLogin
      print("❌ Username atau password salah, silahkan cek kembali!");
    }
  }
}

// Subclass (Admin mewarisi dari User)
class Admin extends User {
  Admin(String username, String password) : super(username, password);

  @override
  void login() {
    super.login(); // panggil method dari superclass
    print("Admin $username memiliki akses ke fitur keamanan tambahan.");
  }

  // Method khusus admin
  void resetPassword(User user) {
    print("Admin $username mereset password untuk ${user.username}.");
  }
}

void main() {
  // Membuat instance user biasa
  var user1 = User("Admin", "Admin1234");
  user1.login();

  print("---");

  // Membuat instance admin
  var admin = Admin("User", "User1234");
  admin.login();

  // Admin bisa melakukan reset password
  admin.resetPassword(user1);

  // User apakah bisa melakukan reset password?
  // user1.resetPassword();
}
