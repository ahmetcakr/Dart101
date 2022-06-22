// Class extends  / Inheritance  // KALITIM
// hepsinin paralarını görebilmelerini istiyorum.Benim banka ismimle birlikte

// Soyut class
abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithName() {
    print('ahmet  $money');
  }
}

class YeniUser extends IUser {
  final String name;
  final int money; // Burada bunları tanımlamamıza gerek yoktur
  // Çünkü zaten biz extends ettiğimizde IUser özelliklerini kullanıyoruz.

  YeniUser(this.name, this.money) : super(name, money);
}

class YeniUser02 extends IUser {
  final int
      tcKimlik; // Bu özellik sadece YeniUser02 içindir. Bunun dışında 2 tane de IUser'dan gelen vardır.

  YeniUser02(String name, int money, this.tcKimlik) : super(name, money);
}

class OzelUser extends IUser {
  late final int _discount;

  OzelUser(String name, int money, int discount) : super(name, money) {
    _discount = discount;
  }

  int get calculateMoney => money - (money ~/ _discount);
}

void main() {
  OzelUser ozelKullanici = OzelUser('name', 150, 70);
  print(ozelKullanici.calculateMoney);
}


/*
// Bu şekildek kullanım yanlıştır.
class customer {
  final String name;
  final int money;

  customer(this.name, this.money);
  void sayMoneyWithName() {
    print('Ahmet $money');
  }
}

class Bankcustomer {
  final String name;
  final int money;

  final int bankingCode;

  Bankcustomer(this.name, this.money, this.bankingCode);
  void sayMoneyWithName() {
    print('Ahmet $money');
  }
}

class Specialcustomer {
  final String name;
  final int money;

  final int bankingCode;
  final int discount;

  Specialcustomer(this.name, this.money, this.bankingCode, this.discount);
  void sayMoneyWithName() {
    print('Ahmet $money');
  }
}
*/

