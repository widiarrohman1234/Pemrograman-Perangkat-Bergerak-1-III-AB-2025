class ChatService{
  @override
  void noSuchMethod(Invocation invocation){
    print("Fitur ${invocation.memberName} belum tersedia di chat service");
  }

  void sendMessage(String message){
    print("Mengirim pesan: $message");
  }
}

void main(){
  var chat = ChatService();

  chat.sendMessage("Halooo,,,, pagi dunia.... selamat menjalani harii");
  // chat.deleteMessage(1);
}