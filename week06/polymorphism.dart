// çok biçimlilik
// bir türün bir başka tür gibi davranabilme ve bu tür gibi kullanılabilme özelliği olarak anlamlandırılır.
// bir yazılımda sürekli if else kullanılmasının önüne geçer

void main() {
  IUser user = Turk();
  user.SayName();

  user = English();
  user.SayName();
}

// Class tanımlamaları

abstract class IUser {
  final String name;

  IUser(this.name);
  void SayName();
}

class Turk implements IUser {
  @override
  void SayName() {
    print('Merhaba $name hoşgeldin');
    print('Karnın aç mı ?');
  }

  @override
  // TODO: implement name
  String get name => 'Veli';
}

class English implements IUser {
  @override
  void SayName() {
    print('Welcome dear $name');
    print('Are you hungry ?');
  }

  @override
  // TODO: implement name
  String get name => 'Jack';
}
