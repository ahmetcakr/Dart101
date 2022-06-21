// MAPLER
// servislerden geri dönen şeyleri bir yerde saklamak için kullanılabilir.

void main() {
  // Müşterinin adını ve parasını saklamak için.

  Map<String, int> users = {
    'ahmet': 20,
    'mehmet': 50
  }; // map'in içerisine eleman eklemek için aa : bb kullanırız.

  print(
      'Ahmetin Parası = ${users['ahmet']}'); // bu şekilde ahmetin parasını görebiliriz.
  // ilk değer key value olarak tutulur. listeye diziye erişmek gibi.

  for (var item in users.keys) {
    // users.keys = key value leri verir.
    // users.values = key valuelerin değerlerini verir.
    // Bu for döngüsü belirtilen listenin mapin dizinin tüm elemanlarını gezer.
    // diğer dillerdeki foreach döngüsü gibidir.
    print('${item} = ${users[item]}  -  ${users.values}');
  }

  for (var i = 0; i < users.length; i++) {
    print(users.keys);
  }

  for (var i = 0; i < users.length; i++) {
    print(
        '${users.keys.elementAt(i)} -  ${users.values.elementAt(i)}'); // for döngüsündeki i'yi kullanabilmek için
  }

  // Ornek   MAP İÇERİSİNDE LİST KULLANIMI
  // Benim bankamın, müşterilerinin birden fazla hesabı olabilir.
  // ahmet bey 3 hesaba sahip. 300,400,200
  // mehmet bey 2 hesaba sahip. 30, 50
  // veli bey 1 hesaba sahip. 30

  // bunların paralarını kontrol et ve eğer parası 150 den fazla olan varsa krediniz hazır yazdır.

  final Map<String, List<int>> vbBank = {
    'ahmet': [300, 400, 200]
  };
  vbBank['mehmet'] = [30, 50];
  vbBank['veli'] = [30];

  for (var item in vbBank.keys) {
    // banktaki tüm elemanlari dolas
    // ve içeride liste olduğu için tekrardan for oluştur.

    for (var money in vbBank[item]!) {
      if (money > 150) {
        print('Kredin hazır');
        break; // break'de sadece for döngüsü biter program devam eder.
        // return; // koşul oluştuğu gibi ilk uyan için uyarıyı verir geri kalanını umursamaz fordan çıkar. Ve program biter
      }
    }
  }

  // bankadaki hesaplardaki paraların toplam mevlasi nedir ?

  for (var name in vbBank.keys) {
    int toplam = 0;
    for (var money in vbBank[name]!) {
      // ünlem işareti boş elemanlar için bir kullanım yöntemidir.
      // vb[name] her keyvalue için for döngüüs yapar bu yüzden musteri kendi para toplamını görebilir.
      toplam += money;
    }
    print('$name senin paranın toplamı = $toplam');
  }

  // Bankadaki tüm paranın toplamı

  int sum = 0;
  for (var name in vbBank.keys) {
    for (var moneys in vbBank[name]!) {
      sum += moneys;
    }
  }
  print('Bankadaki tüm paranın toplamı = $sum');
}  // main
