class Notifier {
  // Metode publik yang harus diimplementasikan oleh setiap Notifier
  void sendNotification(String message) {
    throw UnimplementedError("Metode ini harus diimplementasikan.");
  }

  // Metode publik lain yang juga bagian dari interface
  String get type => 'generic';
}

// Class Email Notifier
class EmailNotifier implements Notifier {
  @override
  sendNotification(String message) {
    print("Mengirim email: $message");
    // Logika pengiriman email yang sebenarnya.
  }

  @override
  String get type => 'email';
}

// Class SMS Notifier
class SmsNotifier implements Notifier {
  @override
  sendNotification(String message) {
    print("Mengirim sms: $message");
    // Logika pengiriman sms yang sebenarnya.
  }

  @override
  String get type => 'sms';
}

// Class Push Notifier
class PushNotifier implements Notifier {
  @override
  sendNotification(String message) {
    print("Mengirim Push: $message");
    // Logika pengiriman sms yang sebenarnya.
  }

  @override
  String get type => 'push';
}

void main() {
  // implementasi
  List<Notifier> notifiers = [EmailNotifier(), SmsNotifier(), PushNotifier()];

  String pesan = "Selamat! Pesanan Anda telah dikirim";

  for (var element in notifiers) {
    print("Tipe notifikasi: ${element.type}");
    element.sendNotification(pesan);
    print("-----");
  }
}
