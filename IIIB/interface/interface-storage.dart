// Interface penyimpanan
interface class Storage {
  void simpan(String data) {
  }
}

// Implementasi Local Storage
class LocalStorage implements Storage {
  @override
  void simpan(String data) {
    print("Data '$data' disimpan di penyimpanan lokal.");
  }
}

// Implementasi Cloud Storage
class CloudStorage implements Storage {
  @override
  void simpan(String data) {
    print("Data '$data' diunggah ke cloud.");
  }
}

// Implementasi Database
class DatabaseStorage implements Storage {
  @override
  void simpan(String data) {
    print("Data '$data' disimpan di database.");
  }
}

void main() {
  List<Storage> storages = [
    LocalStorage(),
    CloudStorage(),
    DatabaseStorage()
  ];

  for (var s in storages) {
    s.simpan("Laporan Keuangan");
  }
}
