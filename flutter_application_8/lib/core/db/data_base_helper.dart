// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:flutter_application_8/common/data_base_request.dart';
import 'package:flutter_application_8/data/model/currentbalance.dart';
import 'package:flutter_application_8/data/model/role.dart';
import 'package:flutter_application_8/data/model/party.dart';
import 'package:flutter_application_8/data/model/post.dart';
import 'package:flutter_application_8/data/model/product.dart';
import 'package:flutter_application_8/data/model/productType.dart';
import 'package:flutter_application_8/data/model/provider.dart';
import 'package:flutter_application_8/data/model/employee.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../../data/model/Stamp.dart';

class DataBaseHelper{
  static final DataBaseHelper instance = DataBaseHelper._instance();
  DataBaseHelper._instance();
  late final Directory _appDocumentDirectory;
  late final String _pathDb;
  late final Database database;
  int _version = 1 ;

  Future<void> init() async{
    _appDocumentDirectory = 
        await path_provider.getApplicationDocumentsDirectory();
    _pathDb = join(_appDocumentDirectory.path, 'kosmetiks.db');
    if(Platform.isWindows || Platform.isMacOS || Platform.isLinux){
       sqfliteFfiInit();
      Database dbase = await databaseFactoryFfi.openDatabase(_pathDb, options: OpenDatabaseOptions(
          onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
          version: _version,
          onCreate: (db, version) async {
            await onCreateTable(db);
          }
        )
      );
    }
    else{
      database = await openDatabase(
        _pathDb,
        version: _version,
        onUpgrade: ((db, oldVersion, newVersion) => onUpdateTable(db)),
        onCreate: (db, version) async {
          await onCreateTable(db);
        }
      );
    }
  }


  Future<void> onUpdateTable(Database db) async{
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');
    for(var table in DataBaseRequest.tableList.reversed){
      if(tables.where((element) => element['name'] == table).isNotEmpty){
        await db.execute(DataBaseRequest.deleteTable(table));
      }
      
    }

    for (var element in DataBaseRequest.createTableList){
        await db.execute(element);
      }

      await onInitTable(db);

  }


  Future<void> onCreateTable(Database db) async{
      for (var element in DataBaseRequest.createTableList){
        await db.execute(element);
      }

      await onInitTable(db);
  }

  Future<void> onInitTable(Database db) async{
    try{
      db.insert(DataBaseRequest.tableRole,Role(nameRole: 'Администратор').toMap());
      db.insert(DataBaseRequest.tableRole,Role(nameRole: 'Грузчик').toMap());
      db.insert(DataBaseRequest.tableRole,Role(nameRole: 'Упаковщик').toMap());
      db.insert(DataBaseRequest.tableRole,Role(nameRole: 'Сортировщик').toMap());

      db.insert(DataBaseRequest.tablePost,Post(postName: 'Грузчик', salary: 25000).toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Упаковщик', salary: 35000).toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Сортировщик', salary: 35000).toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Администратор', salary: 60000).toMap());

      db.insert(DataBaseRequest.tableProductType,ProductType(typeProd: 'Консилер').toMap());
      db.insert(DataBaseRequest.tableProductType,ProductType(typeProd: 'Лифтинг').toMap());
      db.insert(DataBaseRequest.tableProductType,ProductType(typeProd: 'Очищение').toMap());
      db.insert(DataBaseRequest.tableProductType,ProductType(typeProd: 'Тональный крем').toMap());
      db.insert(DataBaseRequest.tableProductType,ProductType(typeProd: 'наюор для макияжа губ').toMap());

      db.insert(DataBaseRequest.tableProvider,Provider(title: 'ООО "Skinjestique"', address: '606659, Липецкая область, город Наро-Фоминск, бульвар Ленина, 44', phoneNumber: '8-926-315-85-82').toMap());
      db.insert(DataBaseRequest.tableProvider,Provider(title: 'ООО "LETIQUE"', address: '288442, Московская область, город Ступино, шоссе Ладыгина, 05', phoneNumber: '8-909-326-46-20').toMap());

      db.insert(DataBaseRequest.tableCurrentBalance,currentBalance(quantity: 100).toMap());
      db.insert(DataBaseRequest.tableCurrentBalance,currentBalance(quantity: 100).toMap());

      db.insert(DataBaseRequest.tableParty,Party(date: '26-09-2022', wholesalePrice: 200000, id_product: 1, id_provider: 2, id_currentBalance: 1).toMap());
      db.insert(DataBaseRequest.tableParty,Party(date: '13-10-2022', wholesalePrice: 150000, id_product: 2, id_provider: 1, id_currentBalance: 2).toMap());

      db.insert(DataBaseRequest.tableEmployee,Employee(login: 'loginin', password: '12345qwe', name: 'Анастасия', surname: 'Никонова', patronymic: 'Александровна', email: 'anastasianikonova374@gmail.com', id_role: 1, id_post: 4).toMap());

      db.insert(DataBaseRequest.tableProduct,Product(productName: 'КОНСИЛЕР LIQUID CAMOUFLAGE', articul: 542345 , cost: 1390, id_employee: 1, id_ptoductType: 1, id_stamp: 1).toMap());
      db.insert(DataBaseRequest.tableProduct,Product(productName: 'Лифтинг сыворотка с ретинолом Skinjestique Retinol Anti-aging serum', articul: 364123 , cost: 100000, id_employee: 1, id_ptoductType: 2, id_stamp: 2).toMap());
      db.insert(DataBaseRequest.tableProduct,Product(productName: 'Очищающая пенка Skinjestique Real Spa Cleansing Foam', articul: 3759642 , cost: 100000, id_employee: 1, id_ptoductType: 3, id_stamp: 2).toMap());
      db.insert(DataBaseRequest.tableProduct,Product(productName: 'НАБОР ДЛЯ МАКИЯЖА ГУБ BRAZILIAN CARNIVAL, ТОН 002 VANESSA', articul: 3456236 , cost: 100000, id_employee: 1, id_ptoductType: 5, id_stamp: 1).toMap());

      db.insert(DataBaseRequest.tableStamp,Stamp(titleStamp: 'LETIQUE').toMap());
      db.insert(DataBaseRequest.tableStamp,Stamp(titleStamp: 'Skinjestique').toMap());




    }
    on DatabaseException catch(e){}
  }
  

  Future<void> onDropTable() async {
    database.close();
    deleteDatabase(_pathDb);
  }

}