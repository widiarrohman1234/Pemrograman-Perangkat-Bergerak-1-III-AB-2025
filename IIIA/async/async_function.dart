Future<bool> login(String username, String password) async {
  await Future.delayed(Duration(seconds: 2));
  // true / false => bool (Boolean)
  return username == 'admin' && password == '1234';
}

Future<void> main() async {
  bool status = await login("admin", "1234");
  print(status ? "Login berhasil" : "Login gagal"); // ternary operator
}
