//                  0,            1,        2
enum MataKuliah { matematika, pemrograman, jaringan }

void main() {
  var mk = MataKuliah.pemrograman;

  // Index enum
  print("Index: ${mk.index}");

  // Semua nilai enum
  print("Daftar Mata Kuliah: ${MataKuliah.values}");

  // switch case
  switch (mk) {
    case MataKuliah.matematika:
      print("Belajar hitung-hitungan");
      break;
    case MataKuliah.pemrograman:
      print("Belajar coding");
      break;
    case MataKuliah.jaringan:
      print("Belajar komputer networking");
      break;
  }

  // Nama enum
  print("Nama enum: ${mk.name}");
}
