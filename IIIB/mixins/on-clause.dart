class Produk{
 void tampilkanInfo(){
    print("Produk ditampilkan di katalog");
  }
}

mixin FlasSale on Produk {
  void terapkanDiskon(double persen){
    print("Diskon $persen% diterapkan");
    super.tampilkanInfo();
  }
}

class BarangElektronik extends Produk with FlasSale {}

void main(){
  var laptop = BarangElektronik();
  laptop.terapkanDiskon(30);
}