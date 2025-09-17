class User{
  final String username;

  // constructor
  User(this.username);

  // arrow function
  String login() => "User $username berhasil login.";
}

// Kelas lain mengimplementasi interface user, tapi dengan cara berbeda
class Guest implements User{
  @override
  String get username => "Guest";

  @override
  String login() => "Guest login tanpa password";
}

void main(){
  User admin = User("Widi Arrohman");
  User guest = Guest(); 

  print(admin.login());
  print(guest.login());
}
