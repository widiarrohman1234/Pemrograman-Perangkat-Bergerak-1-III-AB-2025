import 'package:flutter/material.dart';

/// Model data pengguna
class User {
  final String name;
  final int year;

  const User({required this.name, required this.year});
}

/// Service untuk mengambil data user dari API
class UserService {
  Future<User> fetchUser() async {
    // contoh data dummy
    return const User(name: "Widi", year: 2001);
  }
}

/// Halaman untuk menampilkan user
class ExampleCleanCode extends StatelessWidget {
  const ExampleCleanCode({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = UserService();

    return FutureBuilder<User>(
      future: userService.fetchUser(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final user = snapshot.data!;
        return Center(child: Text("${user.name}, umur ${user.year}"));
      },
    );
  }
}
