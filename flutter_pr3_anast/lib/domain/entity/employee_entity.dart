class EmployeeEntity{
  late int id;
  final String name;
  final String surname;
  final String patronymic;
  final String email;
  final String login;
  final String password;
  final int id_role;
  final int id_post;

 EmployeeEntity({
  required this.name,
  required this.surname,
  required this.patronymic,
  required this.email,
  required this.login,
  required this.password,
  required this.id_role,
  required this.id_post,
  });
}