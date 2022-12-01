import 'package:flutter_pr3_anast/domain/entity/party_entity.dart';

class Party extends PartyEntity{
  late int id;
  final String date;
  final int wholesalePrice;
  final int id_product;
  final int id_provider;
  final int id_currentBalance;
  Party({
    required this.date,
    required this.wholesalePrice,
    required this.id_product,
    required this.id_provider,
    required this.id_currentBalance
    }): super(
      date: date,
      wholesalePrice: wholesalePrice,
      id_product: id_product,
      id_provider: id_provider,
      id_currentBalance: id_currentBalance);

  Map<String,dynamic> toMap(){
    return{
      'date': date,
      'wholesalePrice': wholesalePrice,
      'id_product': id_product,
      'id_provider': id_provider,
      'id_currentBalance': id_currentBalance
    };
  }

  factory Party.toFromMap(Map<String, dynamic> json){
    return Party(
      date: json['date'],
      wholesalePrice: json['wholesalePrice'],
      id_product: json['id_product'],
      id_provider: json['id_provider'],
      id_currentBalance: json['id_currentBalance']
      );
  } 
}