// Abstract benzeri classlar
// Extend eder gibi implements ettiğin classlar ana classın birebir aynısı olacak demektir.

abstract class IStudent {
  final String name;
  final int age;

  void saySomething() {
    print(age);
  }

  IStudent(this.name, this.age);
}

class Student implements IStudent {
  @override
  // TODO: implement age
  int get age => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  void saySomething() {
    // TODO: implement saySomething
    print('student01');
  }
}

class Student02 implements IStudent {
  final String name;
  final int age;

  Student02(this.name, this.age);

  @override
  void saySomething() {
    // TODO: implement saySomething
    print('student02');
  }
}

void main() {
  Student02 ogr = Student02('ahmet', 15);
  print(ogr.saySomething);
}
