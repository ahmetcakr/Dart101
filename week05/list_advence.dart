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

  // array oluşturma
  final carItems = [
    CarModel(
        category: CarModels.bmw, name: 'x5', money: 165, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'y6', money: 16),
    CarModel(
        category: CarModels.yamaha, name: 'd3', money: 14, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'r1', money: 15),
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
} // main

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
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
