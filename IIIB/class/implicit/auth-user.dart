class User {
  final String username;
  User(this.username);

  // String login(){
  //   return "User $username berhasil login.";
  // }
  // arrow function
  String login() => "User $username berhasil login.";
}

// Kelas lain mengimplementasikan interface user, tapi dengan cara berbeda.
class Guest implements User {
  @override
  String get username => "Guest";

  @override
  String login() => "Guest login tanpa password";
}

void main(){
  User admin = User("admin123");
  User guest = Guest();

  print(admin.login());
  print(guest.login());
}