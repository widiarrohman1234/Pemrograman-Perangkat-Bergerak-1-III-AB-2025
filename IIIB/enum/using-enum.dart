// 0,            1,          2
enum MataKuliah { matematika, pemrograman, jaringan }

void main() {
  var mk = MataKuliah.pemrograman;

  /// 1. index
  /// 2. values
  /// 3. name

  print("Index: ${mk.index}"); // 1

  // semua nilai enum, values
  print("Daftar Mata Kuliah: ${MataKuliah.values}");

  // switch-case
  switch (mk) {
    case MataKuliah.matematika:
      print("Belajar hitung-hitungan");
      break;
    case MataKuliah.pemrograman:
      print("Belajar coding"); // harusnya ini
      break;
    case MataKuliah.jaringan:
      print("Belajar komputer networking");
      break;
  }

  // Nama enum (name)
  print("Nama enum: ${mk.name}");
}
