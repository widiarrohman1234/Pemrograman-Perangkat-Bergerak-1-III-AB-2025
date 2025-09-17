mixin class Mentor{
  void ajar() => print("Belajar materi Dart.");
}

class Asisten with Mentor{} // digunakan sebagai mixin
class Trainer extends Mentor{} // digunakan sebagai class

void main(){
  var a = Asisten();
  var t = Trainer();

  a.ajar();
  print("----");
  t.ajar();
}
