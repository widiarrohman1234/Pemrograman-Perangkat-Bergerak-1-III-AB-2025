// Simulasi stream requeast dari server

Stream<String> requestServer()async* {
  for(int i=1; i<=3; i++){
    await Future.delayed(Duration(seconds: 1));
    yield "Request ke-$i diproses";
  }
}

Future<void> main()async{
  print("Menunggu request dari server...");
  await for (final request in requestServer()){
    print(request);
  }
  print("Semua request selesai diproses.");
}