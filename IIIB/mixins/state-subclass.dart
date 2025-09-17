mixin IndentitasProduk {
  String get kodeProduk;

  @override
  int get hashCode => kodeProduk.hashCode;

  @override
  bool operator ==(other) =>
      other is IndentitasProduk && other.kodeProduk == kodeProduk;
}

// class produk
class Produk with IndentitasProduk {
  final String kodeProduk;
  final String nama;
  final double harga;

  Produk(this.kodeProduk, this.nama, this.harga);
}

void main(){
  var p1 = Produk("PRD001", "Laptop", 15000000);
  var p2 = Produk("PRD001", "Laptop gaming", 18000000);
  var p3 = Produk("PRD002", "Mouse", 200000);

  print(p1 == p2);
  print(p1 == p3);

}