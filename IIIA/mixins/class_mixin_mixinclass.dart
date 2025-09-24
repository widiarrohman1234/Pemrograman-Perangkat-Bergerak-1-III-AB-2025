mixin class Mentor{
  void ajar() => print("mengajar materi dart.");
}

class Asisten with Mentor{} // digunakan sebagai mixin
class Trainer extends Mentor{} // digunakan sebagai class

void main(){
  var a = Asisten();
  var t = Trainer();

  a.ajar();
  t.ajar();
}