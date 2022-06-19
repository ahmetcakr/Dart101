// listeler
// Örneğin mağazadaki müşterileri alt alta tanımlayıp kullanmaktansa
// o müşterileri bir arada gösterebildiğimiz yapılardır.

void main() {
// Bir bankaya 10 müşteri gelir bunların 110 tl 50 tlsi vardır

  final List<int> newMoneys = [100, 150, 200, 400, 600];

  List<int> moneys = [
    100,
    150,
    200,
    400,
    600
  ]; // <> bu işaretin içerisinde listenin ne listesi olacağı yazılır.
  // listelerin indexi her zaman 0'dan başlar. İlk elemanı çağırmak için 0 indexini kullanırız.
  print('İlk musterinin parası ${moneys[0]}');

  // Abi ben bu müsterileri parası büyük olana göre sıralamak istiyorum.

  moneys.add(4); // listenin sonuna 4 ekler.
  moneys.insert(2, 290); // 2. indexli yere yani 3. sıraya 290 yaz.
  moneys.sort(); // listeyi küçükten büyüğe sıralar.
  // moneys.sort(a,b);  String listesi sıralama kodudur.
  print(moneys);

  // newMoneys
  // newMoneys listesi her ne kadar final/const olarak belirlenmiş olsa da
  // referans içerdiği için içerisindeki nesnelere bu şekilde erişilebilir.
  newMoneys.add(2); // listeye 2 ekler
  newMoneys.clear(); // listeyi tamamen temizler
  //newMoneys.reversed.toList(); newMoneys listesini terse çevirir fakat toList() methodu yeni bir liste oluşturur.
  // bu yüzden listenin ilk haline dokunmadan onun ters listesini yapmış oluruz.

  // 100 tane musteri yap, bunların her birine sira ile numarasina gore 5TL ekle

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  //print(customerMoney);

  // Customers 100,30,40,60
  // 35 tlden büyük olanlara kredi verebiliriz yaz
  // küçük olanlara bay bay yaz.

  List<int> customersNewMoneys = [100, 30, 40, 60];
  customersNewMoneys.sort();
// for döngüsü for loop
  for (int i = 0; i < customersNewMoneys.length; i++) {
    print('musteri parasi = ${customersNewMoneys[i]}');
    // 0 dan başla(i=0), i sayısı listenin uzunluğundan küçük olduğu sürece devam et
    // ve i sayısı 1er 1er artsın (i++ , i = i + 1 )
    // //${customersNewMoneys[i]} i sayısı 0 dan başlayıp liste uzunluğu kadar arttığı için
    // burada da print listenin i sayısının gittiği yere kadarını gösterecek.

    if (customersNewMoneys[i] > 35) {
      print('Kredi Verebiliriz Bak Abim');
    } else {
      print('Uğurlar Olsun');
    }
  }

  print('Tersten -------------');

  for (int i = customersNewMoneys.length - 1; i >= 0; i--) {
    print('musteri parasi = ${customersNewMoneys[i]}');
    if (customersNewMoneys[i] > 35) {
      print('Kredi Verebiliriz Bak Abim');
    } else {
      print('Uğurlar Olsun');
    }
  }
}
