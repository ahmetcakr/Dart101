// metotlar / functionlar kod tekrarının önüne pratik bir şekilde geçmek için kullanılır.
void main() {
  controlUserMoney(); // metod çağırma
  UserMoney(6); // parametreli metodu çağırma.

  int customerMoney = 3;
  UserMoney(
      customerMoney); // parametre istenilen yere değişkeni yazdık ve değerini aldı.

  FullControlMoney(customerMoney,
      2); // 2 parametre istediği için ilk önce müşteri parası sonra minimum ücreti atadık.

  print(ConvertToDolar(800));
  int result = ConvertToDolar(600);
  print(result);

  print(ConvertToEuro(
      170)); // burada sadece paramızı girdik. Dövizi 17 den kabul etti.
  print(ConvertToEuro(170,
      euroIndex: 5)); // burada paramızı ve dövizimizin 5 olduğunu girdik.

  print(ConvertToStandartEuro(
      userMoney: 50)); //burada parametreye değer atamak zorunlu tutulur
  // ve eğer tarşı tarafın parametreleri yanlış atama olasılığı varsa require kullanılır.
  // Girilmezse direkt hata verir kod çalışmaz. Optional gibi varsayılan değer atanamaz.

  print(sayHello('Ahmet'));

  // LİSTE METODLARI

  List<String> userNames = ['ahmet', 'veli', 'ayse'];

  bool a = userNames.contains('veli');
  print(a); // listenin içerisinde veli var mı kontrolü.
}

//          METODLAR

void controlUserMoney() {
  // bu bir metoddur.
  int userMoney = 5;

  if (userMoney == 5) {
    print('Parası var');
  } else {
    print('Parası yok');
  }
}

// birden fazla kullanıcı kontrol edilmesi gerekiyorsa
// metodlar parametre alırlar. !!!!!

void UserMoney(int money) {
  if (money == 5) {
    print('Parası var');
  } else {
    print('Parası yok');
  }
}

void FullControlMoney(int money, int minumumMoney) {
  if (money > minumumMoney) {
    print('Parası var');
  } else {
    print('Parası yok');
  }
}

// Eğer geriye değer döndüren yani ancak printle çağırdığımızda bize değeri gösterecek metod gerekiyorsa ;

int ConvertToDolar(int userMoney) {
  return userMoney ~/ 13;
}

// Sen Euroyu hesapla fakat eğer euro'da yeni bir değer olduğunu ben sana söylemezsem hep Euroyu 17 kabul et.

int ConvertToEuro(int userMoney, {int euroIndex = 17}) {
  // optional functionlar {} içersinde yazılır = den sonra boş bırakıldığında hangi değer olacağı yazılır.
  return userMoney ~/ euroIndex;
}

int ConvertToStandartEuro({required int userMoney, int euroIndex = 17}) {
  // optional functionlar {} içersinde yazılır = den sonra boş bırakıldığında hangi değer olacağı yazılır.
  //burada parametreye değer atamak zorunlu tutulur. Girilmezse direkt hata verir.
  // ve eğer tarşı tarafın parametreleri yanlış atama olasılığı varsa require kullanılır.
  //Optional gibi varsayılan değer atanamaz.
  return userMoney ~/ euroIndex;
}

String sayHello(String userName) {
  return 'Hoşgeldin $userName';
}
