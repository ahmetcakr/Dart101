// ignore_for_file: public_member_api_docs, sort_constructors_first
// Generic
// class'ın özelliğine isteiğimiz gibi tip vermek

void main() {
  final user = User(data: 'a');
  // Bu şekilde kullanırsan string

  final user2 = User(data: 2);
  // Bu şekilde kullanırsan int olur

  final Auser = AdminUser();
  removeUserAll(Auser); // AdminUserden türetilmiş nesneyi yazarsak çalışır
  // removeUserAll(user); AdminUserden türememişse çalışmazzz XXX
}

class User<T> {
  T data;
  User({
    required this.data,
  });
}

void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {
    // TODO: implement removeUser
  }
}
