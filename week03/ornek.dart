void main() {
  // öğrendiklerimizi kullanalım

  // Listeler
  List<String> sehirler = ['Adana', 'Ankara', 'Samsun', 'Bursa'];

  for (var item in sehirler) {
    print(item);
  }

  // Normal Map
  Map<String, int> sehirPlaka = {
    'Bursa': 16,
    'Samsun': 55,
    'Adana': 01,
    'Ankara': 06
  };

  print('-------------');

  for (var element in sehirPlaka.keys) {
    print(sehirPlaka[element]);
  }

  print('-----------------');
// Map içinde List kullanımı

  Map<String, List<int>> kisiler = {
    'ahmet': [7, 8, 9, 1],
    'mehmet': [4, 4, 6, 5],
    'veli': [5, 9, 2, 7],
    'ayse': [2, 4, 3, 9]
  };

  for (var isim in kisiler.keys) {
    int sum = 0;
    for (var value in kisiler[isim]!) {
      sum += value;
    }
    print('$sum');
  }

  print(
      '${ortalama(50, 60)} ${ortalamaOptional(50)} , ${ortalamaRequired(vize: 20, finall: 50)}  ');
}

// normal function

double ortalama(int vize, int finall) {
  return vize * 0.4 + finall * 0.6;
}

// optional functions

double ortalamaOptional(int vize, {int finall = 0}) {
  return vize * 0.4 + finall;
}

// required function

double ortalamaRequired({required int vize, int finall = 0}) {
  return vize * 0.4 + finall;
}
