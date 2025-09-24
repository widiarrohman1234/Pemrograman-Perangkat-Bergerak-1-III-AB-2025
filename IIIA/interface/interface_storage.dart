// interface penyimpanan
interface class Storage {
  void simpan(String data) {}
}

// immplementasi local storage
class LocalStorage implements Storage {
  @override
  void simpan(String data) {
    print("Data $data disimpan di penyimpanan lokal");
  }
}

// implementasi cloud storage
class CloudStorage implements Storage {
  @override
  void simpan(String data) {
    print("Data $data disimpan di penyimpanan cloud storage");
  }
}

// implementasi database
class DatabaseStorage implements Storage {
  @override
  void simpan(String data) {
    print("Data $data disimpan di penyimpanan database");
  }
}

void main() {
  List<Storage> storages = [LocalStorage(), CloudStorage(), DatabaseStorage()];

  for (var element in storages) {
    element.simpan("laporan keuangan");
  }
}
