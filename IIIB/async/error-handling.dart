Future<String> cekKehadiran(String nama) async{
  if (nama == "Widi") {
    return "Pegawai $nama hadir hari ini.";
  } else {
    throw Exception("Data $nama tidak ditemukan");
  }
}

void main()async{
  try{
    var hasil = await cekKehadiran("Widi");
    print("Hasil: $hasil");

  } catch (e){
    print("Terjadi error: $e");
  } finally{
    print("Proses pengecekan selesai...");
  }
}