double calculateDiscount(double price, double discountPrecentage) {
  if (discountPrecentage < 0 || discountPrecentage > 100) {
    throw ArgumentError("Diskon harus antara 0 dan 100.");
  }

  return price - (price * discountPrecentage / 100);
}
