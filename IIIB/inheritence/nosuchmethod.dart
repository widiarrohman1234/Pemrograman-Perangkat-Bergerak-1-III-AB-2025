class ChatService{
  @override
  void noSuchMethod(Invocation invocation) {
    print("Fitur ${invocation.memberName} belum tersedia di ChatService");
  }

  void sendMessage(String message){
    print("Mengirim pesan: $message");
  }
}

void main(){
  var chat = ChatService();

  chat.sendMessage("Halooo..... P, pagi"); // method ada
  // chat.deleteMessage(1);
}