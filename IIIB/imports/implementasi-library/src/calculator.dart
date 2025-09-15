double calculateDiscount(double price, double discountPercentage){
  if(discountPercentage < 0 || discountPercentage > 100){
    throw ArgumentError("Diskon harus antara 0 dan 100");
  }
  return price - (price * discountPercentage / 100);
}