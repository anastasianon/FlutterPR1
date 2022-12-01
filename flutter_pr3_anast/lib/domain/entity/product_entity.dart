class ProductEntity{
  late int id;
  final String productName;
  final int articul;
  final int cost;
  final int id_employee;
  final int id_ptoductType;
  final int id_stamp;

 ProductEntity({
  required this.productName,
  required this.articul,
  required this.cost,
  required this.id_employee,
  required this.id_ptoductType,
  required this.id_stamp,
  });
}