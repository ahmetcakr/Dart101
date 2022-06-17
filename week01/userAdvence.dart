// var and final / const
void main() {
  var userMoney = 15;
  var userName = 'Ahmet';

  userMoney -= 10;

  // var public gibidir her yerden ulaşılabilir.
  // var tanımlanan değere göre int veya string formatı alır. Fakat string veya int olarak belirtmek daha doğru olur.

  // ##################

  // eğer bir değişkenin değişmesini istemiyorsak onu final olarak tanımlarız.

  final int bankMoneya = 15;
  const String bankNamea = 'Akbank';

  // bankMoney += 10; hata verir.
  //bankName = ''; hata verir.

// -----------
// bankName = 'VB Bank'
// bankUser01 = 'bank1musteri'
// bankUser01Money = 100.00
// bankUser01'e kimse dokunamaz.
// yeni bir müsteri gelecek adi bank02musteri
// yeni banka gelenden bu bank user01 parasını cikartip ekrana yazdiracak.

  const String bankName =
      'VB Bank'; // değişkenin değişmesinin önüne geçmek için const kullandık.

  final String bankUser01 = 'Veli';
  const double bankUser01Money = 100.00;

  final String bankUser02 = 'Ahmet';
  const double bankUser02Money = 780.00;

  print(
      '$bankName adlı bankadaki $bankUser02 ve $bankUser01 in paralarının farkı ${bankUser02Money - bankUser01Money}dir');

  // Örnek
  //100 kişilik halı sahanız var
  // Saat 9 a Ahmet gelip 20 kişilik yer ayırttı.
  // Ardından saat 10'da Veli gelip 50 kişilik yer ayırttı.
  // Son kalan kapasitem kaçtır ?

  int haliSahaKapasitesi = 100;

  int ahmetinTakimi = 20;
  int velininTakimi = 50;

  haliSahaKapasitesi -= ahmetinTakimi;
  print('Ahmetten sonra kapasite = $haliSahaKapasitesi');

  haliSahaKapasitesi -= velininTakimi;
  print('Veliden sonra ise kapasite = $haliSahaKapasitesi');
}
