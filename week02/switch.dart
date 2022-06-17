// switch-case

void main() {
  // ayları switch case ile yazdırın
  // ay kodu 1 ise Ocak, 2 ise Şubat olarak ekrana yazdırın.

  const int ayKodu = 5;

  switch (ayKodu) {
    // switche bağlamak istediğimiz değişkeni parantez içerisine yazarız.
    case 1:
      print('Ocak');
      break;
    case 2:
      print('Şubat');
      break;
    case 3:
      print('Mart');
      break;
    case 4:
      print('Nisan');
      break;
    case 5:
      print('Mayıs');
      break;
    case 6:
      print('Haziran');
      break;
    case 7:
      print('Temmuz');
      break;
    case 8:
      print('Agustos');
      break;
    case 9:
      print('Eylül');
      break;
    case 10:
      print('Ekim');
      break;
    case 11:
      print('Kasım');
      break;
    case 12:
      print('Aralık');
      break;

    default:
      {
        print('1-12 arası değer girin');
      }
  }

  // öğrenci ortalaması hesaplatan uygulama yazın
  // ortalama 0-50 arası ise FF / Kaldınız
  // ortalama 50-65 arası ise CC  / Çalışınız
  // ortalama 65-79 arası ise BB  / Neredeyse oldu
  // ortalama 79-100 arası ise AA olsun. / Adamsın

  int vizeNotu = 100;
  int finalNotu = 80;

  const double vizeOran = 0.4;
  const double finalOran = 0.6;

  double ortalama = (vizeNotu * vizeOran) + (finalNotu * finalOran);
  String harfNotu = '';

  if (ortalama >= 0 && ortalama < 50) {
    // aradaki && işareti VE işaretidir. Ortalama 0 dan büyük eşitse VE 50 den küçükse uygula
    harfNotu = 'FF';
  } else if (ortalama >= 50 && ortalama < 65) {
    harfNotu = 'CC';
  } else if (ortalama >= 65 && ortalama < 79) {
    harfNotu = 'BB';
  } else if (ortalama >= 79 && ortalama <= 100) {
    harfNotu = 'AA';
  }

  switch (harfNotu) {
    case 'AA':
    case 'RR': // bu şekilde iki case de yazılabilir.
      print('Adamsın');
      break;
    case 'BB':
      print('Neredeyse oldu');
      break;
    case 'CC':
      print('Biraz çalış');
      break;
    case 'FF':
      print('Kaldınız.');
      break;
  }
}
