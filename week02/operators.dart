// Operatörler

void main() {
  int money = 5;

  money += 1; // mevcut paranın üzerine br ekle // 6
  money++; // mevcut paranın üzerne bir ekle    // 7
  money--; // mevcut parayı 1 azalt.            // 6

  String name = 'veli';

  if (name == 'veli') {} // eşit mi operatörü
  if (name.length >= 'veli'.length) {} // büyük eşit operatörü
  if (name.length <= 'veli'.length) {} // küçük eşit operatörü
  if (name.length > 'veli'.length) {} // büyüktür operatörü
  if (name.length < 'veli'.length) {} // küçüktür operatörü

  money = money - (10 ~/ 2.5);
  // ~/ bu işaret böl ve en yakın tam sayıya yuvarla anlamı taşır

  money = money % 2; // % operatörü bölümden kalanı gösterir.
  print(money);
  print(money == 0); // eğer doğru ise true döndürür
  print(money.isEven); // çift mi sorusu  - true false çevirir
  print(money.isOdd); // Tek mi sorusu

  // ornek

  // mağazada bir ürün için çekiliş yapılıyor. Ürün fiyatı 100 TL.
  // 3 müşteri bu çekilişe katılıyor
  // Bu üç müşteriye rastgele 3 rakam veriliyor. 5,2 ve 9
  // Tek sayı olanlar %30 indirim alırken
  // Çift sayı olanlar %50 indirim alıyor.
  // Buna göre müşteriler ürünü kaç paraya alır ?

  const String musteri01 = 'ahmet';
  const String musteri02 = 'veli';
  const String musteri03 = 'mehmet';

  const int musteri01Sayi = 5;
  const int musteri02Sayi = 2;
  const int musteri03Sayi = 9;

  int urunFiyati = 100;

  const double discountTek = 30;
  const double discountCift = 50;

  if (musteri01Sayi.isEven) {
    print(
        '$musteri01 için Fiyat = ${urunFiyati - ((urunFiyati * discountCift) ~/ 100)}');
  } else if (musteri01Sayi.isOdd) {
    print(
        '$musteri01 için Fiyat = ${urunFiyati - ((urunFiyati * discountTek) ~/ 100)}');
  }
  if (musteri02Sayi.isEven) {
    print(
        '$musteri02 için Fiyat = ${urunFiyati - ((urunFiyati * discountCift) ~/ 100)}');
  } else if (musteri02Sayi.isOdd) {
    print(
        '$musteri02 için Fiyat = ${urunFiyati - ((urunFiyati * discountTek) ~/ 100)}');
  }
  if (musteri03Sayi.isEven) {
    print(
        '$musteri03 için Fiyat = ${urunFiyati - ((urunFiyati * discountCift) ~/ 100)}');
  } else if (musteri03Sayi.isOdd) {
    print(
        '$musteri03 için Fiyat = ${urunFiyati - ((urunFiyati * discountTek) ~/ 100)}');
  }
}
