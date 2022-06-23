// enum sınıflandırma demektir.
// index'i 0 dan başlar

void main() {
  final customerPc = laptoplar.Casper;
  print(customerPc.index);
  print(customerPc.name);

  switch (customerPc) {
    case laptoplar.Casper:

    case laptoplar.Mac:

    case laptoplar.Lenovo:

    case laptoplar.Monster:

    case laptoplar.Hp:
  }

  if (customerPc.isCheckName('Casper')) {
    print('dogru');
  }
}

enum laptoplar {
  Casper,
  Mac,
  Lenovo,
  Monster,
  Hp,
}

extension ComputersSelectedExtension on laptoplar {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
