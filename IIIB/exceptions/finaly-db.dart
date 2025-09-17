void koneksiDatabase(){
  print("Koneksi database dibuka");
  throw Exception("Query gagal dieksekusi");
}

void main(){
  try{
    koneksiDatabase();
  } catch(e){
    print("Terjadi error: $e");
  } finally{
    print("Koneksi database ditutup");
  }
}