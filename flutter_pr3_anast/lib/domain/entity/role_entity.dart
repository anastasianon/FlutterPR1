class RoleEntity {
  late int id;
  final String nameRole;

  RoleEntity({
    required this.nameRole,
  });
}

enum RoleEnum {
  admin(id: 1, nameRole: 'Администратор'),
  user(id: 2, nameRole: 'Пользователь'),
  emptyRole(id: 0, nameRole: 'без роли');

  const RoleEnum({
    required this.id,
    required this.nameRole,
  });

  final int id;
  final String nameRole;
}
