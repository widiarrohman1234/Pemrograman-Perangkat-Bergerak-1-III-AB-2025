Future<bool> login(String username, String password) async {
  await Future.delayed(Duration(seconds: 1));
  return username == "admin" && password == "1234";
}

void main() async {
  bool status = await login("admin", "12341");
  print(status ? "Login berhasil" : "login gagal"); // ternary operation
}
