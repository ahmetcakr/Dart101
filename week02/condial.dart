//if else
void main() {
  final int money = 5;
  bool isCustomerRich = false; // bool değişkeni 0-1 yani true false çevirir.

  if (money > 10) {
    print('You are rich man'); // Eğer parası 10 dan büyükse sen zenginsin
    isCustomerRich =
        true; // yukarıda tanımladığımız kontrolü true'ya çevirdik çünkü adam zengin

  } else if (money == 10) {
    print('You are in the middle man'); // Eğer parası 10 a eşitse ortadasın
  } else {
    print(
        'You are poor man!'); // eğer paran eşit değil veya büyük değilse fakirsin.
  }

  // örnek
  // bir müşteri 10 tl ile bankaya gelir.
  // Ve bir sorgu oluşturur. Bu sorgunun bedeli 20 tldir.
  // Eğer müşterinin parası 0'ın altındaysa müsteri kovulur.

  const String musteriAdi = 'Ahmet';
  int musteriParasi = 10;
  const int islemUcreti = 20;

  musteriParasi -= islemUcreti;
  if (musteriParasi < 0) {
    print('Abi hadi seni dışarıya alalım.');
  } else {
    print('Kralsın $musteriAdi abim');
  }

  // ornek 02

  // vize - final 'e göre ortalama hesaplayan program yapılacak.
  // Girilen vizenin %40'ı , finalin ise %60 ı alınacak;
  // eğer ortalama 50 altında ise kaldı, üstünde ise geçti yazdıracak.

  const double vizeOran = 0.4;
  const double finalOran = 0.6;

  int vizeNotu = 50;
  int finalNotu = 72;

  double ortalama = (vizeNotu * vizeOran) + (finalNotu * finalOran);

  if (ortalama >= 50) {
    print('Ortalamanız $ortalama . Geçtiniz!');
  } else {
    print('Ortalamanız $ortalama . Kaldınız !');
  }

// ornek 03

// bir mağaza ismi verilecek
// ve örnek isimler toplanır
// ornek isimler : ahmet, mehmet, veli, da, x
// mağaza der ki; ben sadece 2 ve daha az sayıda karakter içeren iismleri istiyorum
// Bu koşula uyanları yan yana görmek istiyorum (boşluklu)

  final String ahmetCompany = 'ahmet';
  final String mehmetCompany = 'mehmet';
  final String veliCompany = 'veli';
  final String daCompany = 'da';
  final String xCompany = 'x';

  const companyLength = 2;
  String results = '';

  if (ahmetCompany.length <= companyLength) {
    results += ahmetCompany;
  }
  if (mehmetCompany.length <= companyLength) {
    results += mehmetCompany;
  }
  if (veliCompany.length <= companyLength) {
    results += veliCompany;
  }
  if (daCompany.length <= companyLength) {
    results += daCompany;
  }
  if (xCompany.length <= companyLength) {
    results += xCompany;
  }

  print(results);
}
