// ignore_for_file: public_member_api_docs, sort_constructors_first
// Singleton (static)
// bazı yerlerde aynı classlar geri dönen aynı değerler kullanılmak istenebilir.
// her dosyada aynısından bir tane oluşturmak yerine bunlar kullanılır.

import 'model/product_config_model.dart';

void main() {
  //final newProduct = Product(); normalde sürekli böyle oluştururuz.

  // fakat static olarak atamışsak bir özelliği bu özellik bellekte saklanır ve
  // ne zaman çağırılırsa çağırılsın gelir ve aynı değer döner.
  // Bu yüzden tehlikelidir. Çünkü herkes erişebilir. Her dosyadan görünebilir.

  // Fakat biz özellik oluştururken static const ile oluşturursak. Kullanıcı erişşse bile değiştiremez.

  // Ve şu şekilde erişilebilir.

  print(Product.money);

  calculateMoney();

  // Product.companyName = '';  X -  Çalışmaz çünkü const olarak atadık.

  // use classımı kullanarak product yapmak istiyorum..

  final user01 = User('Ahmet', 'ab');
  final newProduct2 = Product(user01.product);
  final newProject3 = Product.fromUser(user01);
  Product.veli();

  // benim api key neydi acep ?

  ProductConfig.instance.apikey;
  //  ProductConfig('sdsdds').apikey; // musteri geliyor böyle çağırıyor o yüzden ona farklı çıktı veriyor
  // bunun önüne geçmek için constructor'ı private atarız.
  // private yaptığımızda bu kod ona erişemeyeceği için hata verir.
} // main

void calculateMoney() {
  if (Product.money > 5) {
    print('5 tl daha ekledik');
    // Product.money += 5;
    Product.incrementMoney(5);
    print(Product.money);
  }
}

class Product {
  static int money = 10;
  static const companyName = 'Cakir';
  String name;
  Product(this.name); // class ilk yüklendiğinde constructor kısmı çalışır
  Product.veli([this.name = 'veli']); // [] şu kullanım default değer atmaktır.

  // geriye değer döndüren bir contructor istiyorsak bunu FACTORY olarak atarız.

  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
