// class / enum gibi şeylere uzantı eklemek için kullanılır.
// user_model_02.dart ve enum.dart içerisinde yapılacak.

void main() {
  print('ahmet'.isAdmin());

  String? isim;
  print(isim
      .isAdmin()); // boş değer döndürebilir anlamını taşıması için aşağı ? ekliyoruz
}

// String extensions

extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() ==
        'admin'.toLowerCase(); // this eğer boş ise '' bu şekilde doldur demek.
    //return this?.toLowerCase() == 'admin'.toLowerCase();
  }
}
