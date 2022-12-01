
import '../../domain/entity/product_entity.dart';

class Product extends ProductEntity{
  late int id;
  final String productName;
  final int articul;
  final int cost;
  final int id_employee;
  final int id_ptoductType;
  final int id_stamp;


   Product({
  required this.productName,
  required this.articul,
  required this.cost,
  required this.id_employee,
  required this.id_ptoductType,
  required this.id_stamp,
  }):super(
    productName: productName,
    articul: articul,
    cost: cost,
    id_employee: id_employee,
    id_ptoductType: id_ptoductType,
    id_stamp: id_stamp
  );

  Map<String, dynamic> toMap(){
    return{
      'productName': productName,
      'articul': articul,
      'cost': cost,
      'id_employee': id_employee,
      'id_ptoductType': id_ptoductType,
      'id_stamp': id_stamp
    };
  }

  factory Product.toFromMap(Map<String, dynamic> json){
      return Product(
        productName: json['productName'],
        articul: json['articul'],
        cost: json['cost'],
        id_employee: json['id_employee'],
        id_ptoductType: json['id_ptoductType'],
        id_stamp: json['id_stamp']);
    }
}