import 'package:flutter_application_8/domain/entity/employee_entity.dart';

class Employee extends EmployeeEntity{
  late int id;
  final String name;
  final String surname;
  final String patronymic;
  final String email;
  final String login;
  final String password;
  final int id_role;
  final int id_post;

   Employee({
  required this.name,
  required this.surname,
  required this.patronymic,
  required this.email,
  required this.login,
  required this.password,
  required this.id_role,
  required this.id_post
  }):super(
    name: name,
    surname: surname,
    patronymic: patronymic,
    email: email,
    login: login,
    password: password,
    id_role: id_role,
    id_post: id_post
  );

  Map<String, dynamic> toMap(){
    return{
      'name': name,
      'surname': surname,
      'patronymic': patronymic,
      'email': email,
      'login': login,
      'password': password,
      'id_role': id_role,
      'id_post': id_post
    };
  }

  factory Employee.toFromMap(Map<String, dynamic> json){
      return Employee(
        name: json['name'],
        surname: json['surname'],
        patronymic: json['patronymic'],
        email: json['email'],
        login: json['login'],
        password: json['password'],
        id_role: json['id_role'],
        id_post: json['id_post']);
    }
}