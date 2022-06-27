// ignore_for_file: public_member_api_docs, sort_constructors_first
// Solid kavramı
// Kod güncellenmek veya yeni bir özellik eklenmek istendiğinde mümkün olduğunca az kod değiştirilmeli.
// Gelecekte kolayca adapte olabilmesi ve anlaşılabilir olması.

// Bir class amacına göre çalışmalı, başka işler yapmamalı

void main(List<String> args) {
  IDatabase database = SQL();
  database = MongoDB();
  // Bu değiştirilebilme işlemi LSP'ye uygundur.
}

//

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void ChangeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void UpdateUserLocalization() {
    manager.ChangeUserName('aaa');
    ChangeUserLocalization();
  }

  void ChangeUserLocalization() {
    print('object');
  }
}

// Open - Closed Prinsible (OSP)
// Core classlar kendi içerisinde değiştirilmemeli fakat bundan türeyenlerle büyüyebilmeli

class Product {
  final String name;
  final int money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(super.name, super.money);
  final String category = '';
}

// Liskov Substitution Prensible (LSP)
// "Alt seviye sınıflardan oluşan nesnelerin/sınıfların,
// ana(üst) sınıfın nesneleri ile yer değiştirdikleri zaman, aynı davranışı sergilemesi gerekmektedir"
// Bir class varsa bu alt dallardan üst dallara eşitlenebilir.

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    print('SQL begins');
  }
}

class MongoDB extends IDatabase {
  @override
  void write() {
    print('Mongo begins');
  }
}

// Interface parçalanması
// Interface Segregation Prinsible (ISP)

// ISP diyor ki bu classı böyle yapma, parçala şunu öyle çalışalım
/* 
abstract class IUserOperation {
  void write();
  void read();
  void delete();
  void Language();
  void Location();
} 
*/

abstract class IUserOperation with IUserLocation {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void Location();
}

abstract class ILanguage {
  void Language();
}

class UserLocation extends IUserLocation {
  @override
  void Location() {}
}
// ... gibi kullanılır

// Dependency Inversion Prinsible (DIP)
// En üst class ile alt classların bağının olmaması lazım
// İlk oluşturulan class'ta özellik tanımlaması yapılamaz.

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);

  @override
  void readQR() {}
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {}
}
