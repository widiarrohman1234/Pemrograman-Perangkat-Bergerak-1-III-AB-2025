// superclass
class User {
  String username;
  String password;

  // construktor
  User(this.username, this.password);

  //  List = []
  // Map = {key: value}
  // List<Map>
  List<Map<String, String>> dataUser = [
    {'usernameDB': 'Admin', 'passwordDB': 'Admin1234'},
    {'usernameDB': 'User', 'passwordDB': 'User1234'},
  ];

  void login() {
    // initialisasi variable
    bool succesLogin = false;
    for (var element in dataUser) {
      if (username == element['usernameDB'] &&
          password == element['passwordDB']) {
        print("User $username berhasil login.");
        succesLogin = true;
        break; // menghentikan loop setelah berhasil login
      }
    }
    if (succesLogin == false) {
      print("❌ Username atau password salah, silahkan cek kembali.");
    }
  }
}

// subclass (Admin mewarisi dari User)
class Admin extends User {
  Admin(String username, String password) : super(username, password);

  @override
  void login() {
    super.login();
    print("Admin $username memiliki akses ke fitur keamanan tambahan.");
  }

  // Method khusus admin
  void resetPassword(User user) {
    print("Admin $username mereset password untuk ${user.username}");
  }
}

void main() {
  // membuat instance user biasa
  var user1 = User("User", "User1234");
  user1.login();

  print("----");

  // membuat instance admin
  var admin = Admin("Admin", "Admin1234");
  admin.login();

  // admin melakukan reset password;
  admin.resetPassword(user1);
}
