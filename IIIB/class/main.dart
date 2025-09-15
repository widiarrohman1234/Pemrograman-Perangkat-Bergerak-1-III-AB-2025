class Product {
  // Variabel instans yang diinisialisasi melalui Constructor
  String name;
  double price;

  // Variable instans nullable
  String? description;

  final String productId = DateTime.now().microsecondsSinceEpoch.toString();

  // variable instans yang di bisa (tidak final)
  int stock = 0;

  // Constructor utama
  Product(this.name, this.price, {this.description, int initialStock = 0}) {
    // menggunakan initializer list bisa lebih ringkat untuk initialStock
    this.stock = initialStock;
  }

  // metode untuk menambah stock
  void addStock(int amount) {
    stock += amount;
    print("$amount unit ditambahkan. stok sekarang: $stock");
  }

  // Metode untuk menampilkan detail produk
  void displayDetails() {
    print('---------------------');
    print('ID Produk: $productId');
    print('Nama: $name');
    print('Harga: \$${price.toStringAsFixed(2)}');
    print('Deskripsi: ${description ?? "Tidak ada deskripsi"}');
    print('Stock Tersedia: $stock');
    print('---------------------');
  }
}

void main() {
  var laptop = Product(
    "Laptop gaming",
    1200.00,
    description: "Ini adalah laptop gaming canggih",
    initialStock: 10,
  );

  var buku = Product('Buku Cerita', 15.50);

  // Menampilkan detail produk
  laptop.displayDetails();
  buku.displayDetails();

  // Mengakses dan memodifikasi variable instans
  laptop.addStock(5);
  buku.stock = 50;

  laptop.displayDetails();
  buku.displayDetails();


}
