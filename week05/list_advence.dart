// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  // benim bir arabalar sinifim olacak
  // arabalarin modeli, ismi, parasi kesin olacak şehri olmayabilir.
  // ikinci el durumu eğer müsteri belirtmezse, tüm araçlar ikinci el sayılacak.

  // Benim 5 tane arabam olacak.
  // benim bu arabalarımın kaç tanesi 2. el ?

  // yeni bir araba geldi bu bizde var gibi hissediyorum. Doğru mu ?

  // bana bmw olan ve money'si 20den büyük olan arabalarımıızn ismini söyle

  // ya acaba sadece isimlerini yan yana gösterir misin ?

  // benim elimde mercedes var mı ? (singleWhere)

  // şu yeni gelen arabaya var demiştin bu kaçıncı sırada söyler misin ?  // indexOf

  // ben yeni araba aldım, ekler misin şunu sana zahmet // add

  // bana araabalarımı küçükten büyüğe doğru sıralar mıısn ? // sort
  // sortlar geriye int döndürür ve sayılarda otomatik olarak çıkar
  // fakat metin indeksli şeylerde override etmemiz gerekir

  // bbir listeyi diğerine dahil etmek içim kullanılır // expand

  // bu son ekleneni silelim ve
  // bmw olan ve 30 dan düşükleri silelim.

  // array oluşturma
  final carItems = [
    CarModel(
        category: CarModels.bmw, name: 'x5', money: 165, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'y6', money: 36),
    CarModel(
        category: CarModels.yamaha, name: 'd3', money: 14, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'r1', money: 45),
    CarModel(
        category: CarModels.bmw, name: 'x4', money: 154, isSecondHand: false)
  ];

  final newCar = CarModel(
      category: CarModels.bmw, name: 'x4', money: 154, isSecondHand: false);

  final isHaveCar =
      carItems.contains(newCar); // tüm içerdiği özellikleri karşılaştırır.
  // fakat sınıf içerine eşit eşit sorgusunu eklemek gerekiyor.
  print((isHaveCar) ? 'elimizde var' : 'patron alalim');

  //final resultCount = carItems.any((element) => element.isSecondHand == true);
  // Second hand'i true olan hiçbir ürün var mı sorgusu ? // default true kabul edilir.

  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);
  // kaç tane Secondhand'i true olan var sorgusu.

// eğer bunların isimlerini soruyorsa JOIN metodu ile tanışırız.
  final ResultBmwMore20 = carItems
      .where(
          (element) => element.category == CarModels.bmw && element.money > 20)
      .join(); // join String olarak döndürür.

  print(ResultBmwMore20);

  final carNames = carItems
      .map((e) => e.name)
      .join(','); // join içindeki arasına , koy anlamına gelir.

  print(carNames);

  // bu sorgu eğer false dönerse program hata verir.
  // o yüzden try-catch kullanırız.

  try {
    final mercedesCar = carItems.singleWhere((element) =>
        element.category == CarModels.mercedes); //lastWhere de vardır.
    print(mercedesCar.name);
  } catch (e) {
    print(
        'Araba yok abim  $e'); // catch'in amacı hatayı göstermektir, haber vermektir. İçerisinde işlem yapmak doğru olmaz.
  } finally {
    print(
        'Abi bu işlem ağır oldu bir daha sorma :) '); // finally kısmı her koşulda çalışır.
  }

  final index = carItems.indexOf(newCar);
  print('Yeni arabanın sırası $index');
  final _mercedes =
      CarModel(category: CarModels.mercedes, name: 'poossat', money: 61);
  carItems.add(_mercedes);

  carItems.sort((first, second) =>
      second.money.compareTo(first.money)); // küçükten büyüğe olan bu

  // carItems.sort((first, second) => first.money.compareTo(second.money)); // büyükten küçüğe olan bu
  print(carItems);

  final users = carItems.expand((element) => element.users).toList();

  // calculateToUser(carItems);
  calculateToUser(List.of(carItems));

  carItems.remove(_mercedes);
  print(carItems);

  carItems.removeWhere(
      (element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
} // main

void calculateToUser(List<CarModel> items) {
  // itemleri düzelt bmw olanları yamaha yap

  final newItems = items.map((CarModel e) {
    if (e.category == CarModels.bmw) {
      e.category = CarModels.yamaha;
    }
    if (e.isSecondHand) {
      e.isSecondHand = true;
    }
    return e;
  }).toList();
  print(newItems);
}

class CarModel {
  CarModels category;
  final String name;
  final double money;

  List<String> users;
  String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.users = const [],
    this.city,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
