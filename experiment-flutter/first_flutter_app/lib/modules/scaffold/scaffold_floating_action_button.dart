import 'package:flutter/material.dart';

class ScaffoldFloatingActionButton extends StatelessWidget {
  const ScaffoldFloatingActionButton({super.key});

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
