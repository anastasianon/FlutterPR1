abstract class DataBaseRequest {
  /// Таблица Роли
  ///
  ///
  static String deleteTable(String table) => 'DROP TABLE $table';

  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableUsers = 'Users';

  static const String tableEmployee = 'Employee';
  static const String tablePost = 'Post';
  static const String tableProduct = 'Product';
  static const String tableProductType = 'ProductType';
  static const String tableParty = 'Party';
  static const String tableProvider = 'Provider';
  static const String tableStamp = 'Stamp';
  static const String tableCurrentBalance = 'CurrentBalance';

  static const List<String> tableList = [
    tableRole,
    tableUsers,
    tableEmployee,
    tablePost,
    tableProduct,
    tableProductType,
    tableParty,
    tableProvider,
    tableStamp,
    tableCurrentBalance
  ];
  static const List<String> createTableList = [
    _createTableRole,
    _createTableUsers,
    _createTableEmployee,
    _createTablePost,
    _createTableProduct,
    _createTableProductType,
    _createTableParty,
    _createTableProvider,
    _createTableStamp,
    _createTableCurrentBalance
  ];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"nameRole" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id" INTEGER, "login" TEXT NOT NULL UNIQUE, "password" TEXT NOT NULL, "id_role" INTEGER NOT NULL, FOREIGN KEY("id_role") REFERENCES "Role"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Post
  static const String _createTablePost =
      'CREATE TABLE "$tablePost" ("id"	INTEGER,"postName" TEXT NOT NULL UNIQUE, "salary" INTEGER NOT NULL, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Employees
  static const String _createTableEmployee =
      'CREATE TABLE "$tableEmployee" ("id"	INTEGER, "name"	TEXT NOT NULL, "surname"	TEXT NOT NULL, "patronymic"	TEXT NULL, "email"	TEXT NOT NULL UNIQUE, "login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL, "id_role" INTEGER, "id_post"	INTEGER, FOREIGN KEY("id_role") REFERENCES "Role"("id"),  FOREIGN KEY("id_post") REFERENCES "Post"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Product
  static const String _createTableProduct =
      'CREATE TABLE "$tableProduct" ("id"	INTEGER,"productName" TEXT NOT NULL UNIQUE, "articul" INTEGER NOT NULL, "cost" INTEGER NOT NULL, "id_employee" INTEGER, "id_ptoductType" INTEGER, "id_stamp" INTEGER, FOREIGN KEY("id_employee") REFERENCES "Employee"("id"),  FOREIGN KEY("id_ptoductType") REFERENCES "ProductType"("id"), FOREIGN KEY("id_stamp") REFERENCES "Stamp"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы ProductType
  static const String _createTableProductType =
      'CREATE TABLE "$tableProductType" ("id"	INTEGER,"typeProd" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Party
  static const String _createTableParty =
      'CREATE TABLE "$tableParty" ("id"	INTEGER, "date" TEXT NOT NULL, "wholesalePrice" INTEGER NOT NULL, "id_product" INTEGER, "id_provider" INTEGER, "id_currentBalance" INTEGER, FOREIGN KEY("id_product") REFERENCES "Product"("id"),  FOREIGN KEY("id_provider") REFERENCES "Provider"("id"),  FOREIGN KEY("id_currentBalance") REFERENCES "currentBalance"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Provider
  static const String _createTableProvider =
      'CREATE TABLE "$tableProvider" ("id"	INTEGER,"title" TEXT NOT NULL UNIQUE,"address" TEXT NOT NULL, "phoneNumber" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы CurrentBalance
  static const String _createTableCurrentBalance =
      'CREATE TABLE "$tableCurrentBalance" ("id" INTEGER, "quantity" INTEGER NOT NULL, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Stamp
  static const String _createTableStamp =
      'CREATE TABLE "$tableStamp" ("id"	INTEGER, "titleStamp" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';
}
