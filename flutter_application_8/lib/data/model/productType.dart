import 'package:flutter_application_8/domain/entity/productType_entity.dart';

class ProductType extends ProductTypeEntity{
  late int id;
  final String typeProd;
  ProductType({required this.typeProd}): super(typeProd: typeProd);

  Map<String,dynamic> toMap(){
    return{
      'typeProd': typeProd,
    };
  }

  factory ProductType.toFromMap(Map<String, dynamic> json){
    return ProductType(typeProd: json['typeProd']);
  } 
}