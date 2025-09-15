enum JenisKontrak { harian, bulanan, tahunan }

void main() {
  var kontrak = JenisKontrak.tahunan;

  print("Jenis Kontrak Karyawan: ${kontrak.name}");
}
