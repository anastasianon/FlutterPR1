import 'package:flutter_pr3_anast/domain/entity/post_entity.dart';

class Post extends PostEntity{
  late int id;
  final String postName;
  final int salary;
  Post({
    required this.postName,
    required this.salary
    }): super(
      postName: postName,
      salary: salary
      );

  Map<String,dynamic> toMap(){
    return{
      'postName': postName,
      'salary': salary
    };
  }

  factory Post.toFromMap(Map<String, dynamic> json){
    return Post(
      postName: json['postName'],
      salary: json['salary']
      );
  } 
}