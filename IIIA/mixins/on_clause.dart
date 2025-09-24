class Produk{
 void tampilkanInfo(){
    print("Produk ditampilkan di katalog");
  }
}

mixin FlashSale on Produk{
  void terapkanDiskon(double persen){
    print("Diskon $persen% diterapkan!");
    super.tampilkanInfo();
  }
}

class BarangElektronik extends Produk with FlashSale{}

void main(){
  var laptop = BarangElektronik();
  laptop.terapkanDiskon(30);
  
}
