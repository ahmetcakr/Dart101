void main() {
  // müşterinin adini tut
  // müşterinin parasini ögren
  // müsteriye merhaba deyip parasını söyle.
  // bizim bankaya geldiği için parasına 5 tl ekle.

  int userMoney = 25;
  double otherUserMoney = 15.7;
  String userName = 'Veli';
  userMoney = userMoney + 5; // userMoney += 5;

  print('Merhaba $userName bankada $userMoney Türk Liranız var');

  userMoney -= 10;
  print('Paranız değer kaybetti. Güncel Paranız = $userMoney');
  print(
      '1. Kullanıcının parası = $userMoney - 2. Kullanıcının parası = $otherUserMoney');
}
