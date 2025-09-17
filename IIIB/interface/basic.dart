// Sistem Inventaris
class Barang{
  String nama;
  Barang(this.nama);

  void info()=> print("Barang: $nama");
}

class Laptop extends Barang{
  Laptop(String nama) : super(nama);
}

void main(){
  var b = Laptop("My Laptop Kuhh");
  b.info();
}