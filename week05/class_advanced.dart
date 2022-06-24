// ileri seviye class örnekleri

void main() {
  final user = _User('ahmet', age: 21);

  // musterinin yasi 18 den küçü mü kontrolü yapar mısın ?
  if (user.age is int) {
    // user.age is! int  olumsuz oluşturur, değil mi anlamındadır.
    // is sonrasında gelene göre sorgular yani int mi gibi
    if (user.age! < 18) {
      // ! kullanabiliriz çünkü int sorgusundan geçti null olma ihtimali yok.
      print('evet küçük');
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

// kullanicilarin parasi var ama paranin tipi değişken olabilir
// parasi olan adamin o parametresi bir isim de olabilir bir deger de olabilir.
// tr yazacak yere 15 yazabilir anlamında

  final _newType = user.moneyType is String ? user.moneyType as String : "";

  print((_newType) + 'A');

  // Custom Operator

  final int money1 = 50;
  final int money2 = 50;

  print(money1 == money2); // true

  final userMoney1 = Bank(50, '12');
  final userMoney2 = Bank(50, '12');

  print(userMoney1 ==
      userMoney2); // false  referans olduğu için referanslar aynı mı diye kontrol eder.

// musteri diyor ki = banka sınıfından iki müsterinin parasını toplayıp gösterir miisn ?

  print(userMoney1 + userMoney2);

  // musteri tekrardan diyor ki id'si aynı olan musteriler aynı kişi olmak zorunda. Farklı kişiler aynı id'yi kullanamaz.

  print(userMoney1.toString());
  print(userMoney1 == userMoney2);

  // diğer bankadan bir modul aldık bunu ekleyip müsterinin parasını sorgular mıısn ?
  // MIXIN KULLANIMI
  // constructorsız sınıf gibilerdr. Sadece işini yapıp geri döndürür.

  // msuteri adamın parasına 10 tl ekle geri döndür ? (Cascade Notation)
  // musteri id 1 yap ve musteri adını veli yap
  //userMoney1.money += 10; X

  userMoney1
    ..money += 10
    ..name = 'veli'
    ..id = '1';

  print(userMoney1);
} // main

class _User {
  final String name;
  int? age;

  dynamic moneyType; // dynamicler her türlü değeri alabilir.

  _User(this.name, {this.age});

// Aşağıdaki kullanım yanlıştır çünkü birini atarsanız eğer diğerini atadığınızda o değeri almaz hata verir.

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  // with bu class'a dahil et gibidir.
  int money;
  String id;
  String? name;
  Bank(this.money, this.id);

// operatör atamak  // artık yukarıdaki referanslar arası toplama çalışacak
  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  void sayBankHello() {
    calculateMoney(money);
  }

  @override
  bool operator ==(Object object) {
    //object kullanılması her şey gelebilir anlamını taşır.
    return object is Bank && object.id == id;
  }
}

mixin BankMixin {
  void sayBankHello() {} // bunu kullanacağımız classta da doldurabilirz.

  void calculateMoney(int money) {
    print(money);
  }
}
