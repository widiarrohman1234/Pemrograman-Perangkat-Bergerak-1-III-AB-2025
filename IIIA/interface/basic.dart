class Barang {
  String nama;
  // constructor
  Barang(this.nama);

  // void info() {
  //   print("Barang: $nama");
  // }

  // arrow function
  void info() => print("Barang $nama");
}

class Laptop extends Barang {
  Laptop(String nama): super(nama);
}

void main(){
  var b = Laptop("laptop kantor");
  b.info();
}
