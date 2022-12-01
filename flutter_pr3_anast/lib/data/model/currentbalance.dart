import 'package:flutter/cupertino.dart';
import 'package:flutter_pr3_anast/domain/entity/currentbalance_entity.dart';

class currentBalance extends CurrentBalanceEntity{
  late int id;
  final int quantity;

  currentBalance({
  required this.quantity,
    }): super(
      quantity: quantity);

  Map<String,dynamic> toMap(){
    return{
      'quantity': quantity
    };
  }

  factory currentBalance.toFromMap(Map<String, dynamic> json){
    return currentBalance(
      quantity: json['quantity']
      );
  } 
}