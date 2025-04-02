class Cars{
  String brand;
  int year;

  Cars(this.year,this.brand);

  dynamic displayInfo() => 'Car Name: $brand \n Manufacturing Year: $year';
}