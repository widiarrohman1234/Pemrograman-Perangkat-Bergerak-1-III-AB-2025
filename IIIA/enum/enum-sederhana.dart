enum JenisKontrak {harian, bulanan, tahunan}

void main(){
  var kontrak = JenisKontrak.tahunan;
  print("Jenis kontrak karyawa: ${kontrak.name}");
}

