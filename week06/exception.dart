import 'dart:math';

void main() {
  String? userName;

  try {
    if (userName!.length > 2) {
      print('a');
    }
  } catch (e) {
    print(e);
    throw UserNameException();
  }
}

// Kendi exception classlarımızı yazalım

class UserNameException implements Exception {
  @override
  String toString() {
    // TODO: implement toString
    return 'Null girmişsin bunu düzelt abim';
  }
}
