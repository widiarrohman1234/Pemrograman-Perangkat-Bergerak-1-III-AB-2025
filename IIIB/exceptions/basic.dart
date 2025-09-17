void simpanDataPegawai(String nama){
  if(nama.isEmpty){
    throw Exception("Nama pegawai tidak boleh kosong!");
  }
  print("Data pegawai $nama berhasil disimpan");
}

void main()
{
  simpanDataPegawai("");
}