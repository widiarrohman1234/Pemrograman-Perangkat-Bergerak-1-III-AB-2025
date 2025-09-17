enum Kendaraan {
  mobil(roda: 4, kapasitas: 5, emisi: 400),
  bus(roda: 6, kapasitas: 60, emisi: 800),
  sepeda(roda: 2, kapasitas: 1, emisi: 0);

  const Kendaraan({
    required this.roda,
    required this.kapasitas,
    required this.emisi,
  });

  final int roda;
  final int kapasitas;
  final int emisi;

  int get jejakKarbon => (emisi / kapasitas).round();
  bool get ramahLingkungan => this == Kendaraan.sepeda;
}

void main(){
  print("Jejak karbon bus: ${Kendaraan.bus.jejakKarbon}");
  print("Apakah sepeda ramah lingkungan? ${Kendaraan.mobil.ramahLingkungan}");
}