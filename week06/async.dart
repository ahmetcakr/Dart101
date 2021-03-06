// Async / Sync

// Dart dili single track çalışır default olarak
// Main track üzerinde işler gider.
// işi giden buradan çıkar

// Dart event loop denilen yapıda çalışır
//(tüm işlemleri tek bir iş parçacığı üzerinde yürütür, ancak birkaç akıllı veri yapısı kullanarak bize çoklu iş parçacığı yanılsaması verir)

Future<void> main() async {
  print('a');

  // Stream
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(15, 3);
  bankMoneys.listen((event) {
    print(event);
  });
  // 2 saniye bekle sonra gel.

  // Future.delayed(Duration(seconds: 2));
  // bu şekilde çalışmaz

  // çalışma şekli budur
  //await Future.delayed(Duration(seconds: 2));

  /* await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
    await Future.delayed(Duration(seconds: 1));
    print(element);
  }); */

  print('geldim');

  // önce ana sorgular çalışır ardından future yapıları verilen duration'a göre çalışır
  print('Hello01');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('Hello02');
  });

  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('Hello03');
  });

  print('Hello04');
}

// Kodlar normalde yazıldığı sırayla çalışır.
// async'lar çalışan tracki durdurur işlemi yaptırır.
// sync'lar ise çalışan tracki durdurmaz. Bunlarda çalışma sırası yoktur.

// bir servise istek attık cevap geç gelebilir.
// Bir matematik işlemi var uzun sürecek, ben işime bakayım

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  Future.delayed(Duration(seconds: 1));
  // while döngüsü
  // localRetry, retry Count olana kadar çalış
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5; // return gibi çalışır
  }
}
