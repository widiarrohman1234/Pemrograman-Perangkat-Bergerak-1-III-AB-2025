
class Notifier {
  // metode publik yang harus diimplementasikan oleh setiap Notifier
  void sendNotification(String message) {
    throw UnimplementedError("Metode ini harus diimplementasikan");
  }

  // Metode publik lain yang juga bagian dari interface
  String get type => 'generic';
}

// Email
class EmailNotifier implements Notifier {
  @override
  void sendNotification(String message) {
    print("Mengirim Email: $message");
    // Logika untuk pengiriman Email....
  }

  @override
  String get type => 'email';
}

// SMS
class SmsNotifier implements Notifier {
  @override
  void sendNotification(String message) {
    print("Mengirim SMS: $message");
    // Logika untuk pengiriman SMS....
  }

  @override
  String get type => 'sms';
}

// Push
class PushNotifier implements Notifier {
  @override
  void sendNotification(String message) {
    print("Mengirim Push Notification: $message");
    // Logika untuk pengiriman Push Notification....
  }

  @override
  String get type => 'push';
}

void main() {
  // Membuat daftar notifikasi dari berbadai implementasi
  List<Notifier> notifiers = [EmailNotifier(), SmsNotifier(), PushNotifier()];

  String pesan = "Selamat! Pesanan Anda telah dikirim.";
  // Mengirim pesan ke semua saluran secara seragam
  for (var element in notifiers) {
    print("Tipe notifikasi: ${element.type}");
    element.sendNotification(pesan);
    print('------');
  }
}
