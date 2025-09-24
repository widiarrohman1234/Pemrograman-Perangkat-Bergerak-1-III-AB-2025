import 'package:flutter/material.dart';

class ScaffoldDrawer extends StatelessWidget {
  const ScaffoldDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jadwal Kuliah")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            decoration: const InputDecoration(labelText: "Nama Mahasiswa"),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu Mahasiswa"),
            ),
            ListTile(title: Text("Profil")),
            ListTile(title: Text("Jadwal Kuliah")),
            ListTile(title: Text("Nilai")),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.note_add),
                  title: const Text("Tambah Catatan"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.schedule),
                  title: const Text("Tambah Jadwal"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.notifications),
                  title: const Text("Tambah Pengingat"),
                  onTap: () {},
                ),
              ],
            ),
          );
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
