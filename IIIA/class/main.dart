class Product {
  String name;
  double price;

  String? description; //nullable

  final String productId = DateTime.now().microsecondsSinceEpoch.toString();

  int stock = 0; //non-nullable

  // consturctor utama
  Product(this.name, this.price, {this.description, int initStock = 0}) {
    this.stock = initStock;
  }

  // Method untuk menambah stok
  void addStock(int amount) {
    if (amount > 0) {
      stock += amount;
      print("$amount unit ditambahkan. Stok sekarang: $stock");
    }
  }

  // Metode untuk menampilkan detail produk
  void displayDetails() {
    print('-------------------------------');
    print("ID Produk: $productId");
    print("Name: $name");
    print("Harga: \$${price.toStringAsFixed(2)}");
    print("Deskripsi: ${description ?? "Tidak ada deskripsi"}");
    print("Stok Tersedia: $stock");
    print('-------------------------------');
  }
}

void main() {
  // membuat instance produk baru
  var laptop = Product(
    'Laptop Gaming',
    1200.00,
    description: "Ini adalah laptop canggih untuk gaming",
    initStock: 10,
  );

  var buku = Product("Buku Cerita", 15.50);

  // Menampilkan detail produk
  laptop.displayDetails();
  buku.displayDetails();

  // mengakses dan memodifikasi variable instance
  laptop.addStock(5);
  buku.stock = 50;

  laptop.displayDetails();
  buku.displayDetails();
}
