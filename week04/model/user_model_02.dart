class NewUser2 {
  final String name;
  int money; // eğer final atarsak dışarıdan değeri değişemez.
  final int? age;
  final String? city;

  late final String userCode;
  late final String _id;

  NewUser2(this.name, this.money, {required String id, this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
    _id = id;
  }

  /* bool isEmptyId() {
    return _id.isEmpty;
  } */

  // üstteki fonksiyonun aynısı
  bool get isEmptyId => _id.isEmpty; // bu
}

// get set işlemleri
class NewUser3 {
  final String name;
  int _money; // encapsalute field

  int get money => _money; //money'i geri döndür

  set money(int? money) {
    /* if (money == null) {
      _money = 0;
    } else {
      _money = money;
    } */
    _money = money == null ? 0 : money; //üstteki kodun aynısı
  }

  final int? age;
  final String? city;

  NewUser3(this.name, this._money, {required String id, this.age, this.city}) {}
}
