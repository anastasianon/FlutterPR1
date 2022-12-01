import 'package:flutter_pr3_anast/domain/entity/provider_entity.dart';

class Provider extends ProviderEntity{
  late int id;
  final String title;
  final String address;
  final String phoneNumber;
  Provider({
  required this.title,
  required this.address,
  required this.phoneNumber
    }): super(
      title: title,
      address: address,
      phoneNumber: phoneNumber);

  Map<String,dynamic> toMap(){
    return{
      'title': title,
      'address': address,
      'phoneNumber': phoneNumber
    };
  }

  factory Provider.toFromMap(Map<String, dynamic> json){
    return Provider(
      title: json['title'],
      address: json['address'],
      phoneNumber: json['phoneNumber']
      );
  } 
}