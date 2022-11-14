import '../../domain/entity/stamp_entity.dart';

class Stamp extends StampEntity{
  late int id;
  final String titleStamp;
  Stamp({
  required this.titleStamp
    }): super(
      titleStamp: titleStamp);

  Map<String,dynamic> toMap(){
    return{
      'titleStamp': titleStamp
    };
  }

  factory Stamp.toFromMap(Map<String, dynamic> json){
    return Stamp(
      titleStamp: json['titleStamp']);
  } 
}