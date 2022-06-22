class NewUser {
  final String name;
  final int money; // eğer final atarsak dışarıdan değeri değişemez.
  final int? age;
  final String? city;

  late final String userCode;
  late final String
      _id; // _id olarak kullanmak bunun private olduğunu gösterir.
  // bu private nesneye sadece bu file içerisinden erişilebilir.

  NewUser(this.name, this.money, {required String id, this.age, this.city}) {
    // az önceki işlemin kısa hali
    userCode = (city ?? 'ist') + name;
    _id = id;
  }

  bool isSpecialUser(id) {
    return _id ==
        id; // eğer yukarıdaki id ile bizim id eşit ise true döndürür değilse false
  }
}
