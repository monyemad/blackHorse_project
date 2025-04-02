class Person{
  String name;
  int age;

  Person(this.age,this.name);

  dynamic personInfo() {
    return 'Person Name is $name and he/she is $age year';
    }
}

class Student extends Person{
  int grade;

  Student(this.grade) : super(0, '');

  dynamic displayGrade() => 'Student Grade is $grade';
}