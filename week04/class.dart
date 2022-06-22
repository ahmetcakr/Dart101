// class tanımlayın
// musterinin adi zorunlu, parası olmak zorunda, yasini vermeyebilir, city'sini vermeyebilir.
import 'model/user_model.dart';
import 'model/user_model_02.dart';

class User {
  // özellik tanımı
  late final String
      name; // late bu değer sonradan değerini alacak tamam kızma demek.
  late final int money;
  late final int? age;
  late final String? city;

  late final String userCode;
  final String id;
  // final kullanırsak contruct içerinde kesinlikle tanımlama yapmamız gerekir.
  // Constructor
  User(String name, int money, {required this.id, int? age, String? city}) {
    // eğer {} içerisine alırsak sadece vermemizi zorunlu tuttuğumuz değerleri ister
    this.name =
        name; // this.something şeklinde class'ın özelliklerine erişebiliyoruz.
    this.money = money;
    this.age = age;
    this.city = city;

    userCode = (city ?? 'ist') + name; // city yoksa ist ata
  }
}

void main() {
  // musteri adi var,  parasi var, yasi var ...
  // ben bu müsterileri bir gruplasam, bir kümelesem
  // bu musteriler bana aynı özellikleri aynı şekilde gösterse

  // int Money; bu şekilde tanımlama doğru olmaz çünkü dart dili null değer döndürenleri sevmez.

  int?
      money; // fakat bu şekilde kullanırsak money değişkeni null değer döndürebilir anlamına gelir.
  // print(money+10); bu şekilde toplama işlemi yapamayız çünkü money bir null
  // print(money! + 10); bu da iyi bir kullanım değildir. Kesinlikle money'e değer gelecek anlamı taşır
  // uygulamalarınızı patlatabilir. !!!!!
  if (money != null) {
    print(money + 50);
  } else {
    print(10 + 10);
  }

  // bankada 3 musteri var
  // birinin 100 tlsi, diğerinin hesabı yok, sonuncusunun 0 tlsi var
  // hesabı olmayana hesap aç, 0 tlsi olanı kov, 100 tlsi olana musterim hosgeldin yaz.

  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('hoşgeldin reis');
      } else {
        print('kovuldunuz!');
      }
    } else {
      print('haydi hesap açalım');
    }
  }

  // üçlü koşul
  bool result =
      ControlMoney(2) == null ? false : true; //short if olarak da geçer
  // ControlMoney(2) eğer null ise false döndür değilse true döndür anlamını taşır.
  print(result);

  print('--------' * 10); // 10 kere ----- yazar;

  // class'tan nesne oluşturmak
  final User user01 = User('ahmet', 150, age: 22, city: 'Bursa', id: 'a');
  print(user01.name);

  final User user02 = User('veli', 200, age: null, city: null, id: 'a');
  User user03 = User('mehmet', 50, id: 'a');
  print(user03.userCode);

  final NewUser newUser = NewUser('abe', 190, id: '15');
  //print(newUser._id); // private ama ulaşılabiliyor çünkü file içerisinden ulaşışılabilir.
  // model'e classı yükleyince artık _id ulaşılamaz oldu.

  if (newUser.isSpecialUser('12')) {
    print('deel');
  }

  NewUser2 newUser02 = NewUser2('ali', 900, id: 'gg');
  newUser02.money += 5;

  print(newUser02.isEmptyId);

  NewUser3 newUser03 = NewUser3('ahmet', 19, id: 'ad');
} // main

// yeni bir metod olsun eğer müsterinin hesabı yoksa veya parası 0 ise geriye null döndürsün
int? ControlMoney(int? money) {
  // bu functionda değer gelmeyebilir.
  if (money == null || money == 0) {
    return null; // normalde null döndürmez fakat metodu int? olarak atadık.
  } else {
    return money;
  }
}
