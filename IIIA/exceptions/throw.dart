void prosesPembayaran(double jumlah){
  if(jumlah <= 0){
    throw Exception("Jumlah pembayaran tidak valid");
  }
  print("Pembayaran sebesar Rp.$jumlah berhasil diproses");
}

void main(){
  prosesPembayaran(0);
}