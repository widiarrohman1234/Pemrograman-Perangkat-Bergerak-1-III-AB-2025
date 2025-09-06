/**
 * Function
 */

int hitungLuasPersegiPanjang(int p, int l) {
  int hasil = p * l;
  return hasil;
}

void hitungLuasPersegiPanjangLambda(int p, int l) => print(p * l);

String panggilNama() {
  return "widi";
}

void sayHello() {
  return print("katakan hello");
}

// lambda function
void lambdaFunction() => print("Hello, ini adalah Lambda Function");

int luasPersegi(int sisi) {
  return sisi * sisi;
}

double luasSegitiga({double alas = 0, double tinggi = 0}) {
  return 0.5 * alas * tinggi;
}

void main() {
  int p = 6;
  int l = 10;
  int luasPersegiPanjang = p * l;
  print("hasil: $luasPersegiPanjang");

  // panggil fungsi hitungLuasPersegiPanjang()
  print(hitungLuasPersegiPanjang(2, 5));
  print(hitungLuasPersegiPanjang(4, 9));

  print(panggilNama());
  sayHello();
  lambdaFunction();
  hitungLuasPersegiPanjangLambda(2, 4);

  // luar persegi
  print(luasPersegi(3));

  // luas segitiga
  print(luasSegitiga(tinggi: 8, alas: 7));

  // anonymous function ke-1
  const list = ['apel', 'pisang', 'jeruk'];

  var uppercaseList = list.map((item) {
    return item.toUpperCase();
  }).toList();

  // print(uppercaseList);

  // anonymous function ke-2
  uppercaseList.forEach((item){
    print('$item (${item.length})');
  });

}
