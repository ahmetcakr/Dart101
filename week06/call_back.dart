// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  final user = User(money: 5);

  user.calculateMoney((int result) {
    print(user.money);
  });
  // geri bir şey yazdırmak o yüzden calla back kullanırız

  user.calculateMoneyInt((int result) {
    print(user.money);
    return result;
  });
}

// call back metodu kısaca bu şekilde de kullanılabilir
typedef CalculateCallBack = void Function(int data);

class User {
  int money;
  User({
    required this.money,
  });

  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    onComplete(money);
    //
  }

  void calculateMoneyInt(int Function(int data) onComplete) {
    money += 5;
    onComplete(money);
    //
  }
}
