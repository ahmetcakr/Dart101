void main() {
  // LESSON 01

  // void main() çalışacak kodların bulunduğu alandır
  // Bu kod ekranda mesajımı gösterir.
  // ctrl+alt+n  çalıştır
  String kisiAdi = "ahmet"; // string değişkeni tanımlama
  int kisiYasi = 15; // integer değişkenş tanımlama

  print(kisiAdi + "'in yaşı = " + kisiYasi.toString()); // ekrana yazdırma

  kisiYasi = 18; // değişken değeri değiştirme
  print(kisiAdi + "'in yaşı = " + kisiYasi.toString());
  print(kisiAdi + "'in yaşi2 = " + "$kisiYasi");
  print(
      'Yas toplami = ${15 + 18}'); // tırnaklar arasında matematik işlemi yapmak
}
