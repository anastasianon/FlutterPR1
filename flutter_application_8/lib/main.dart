import 'package:flutter/material.dart';
import 'package:flutter_application_8/core/db/data_base_helper.dart';


void main() {
  DataBaseHelper.instance.init();
  runApp(const App());
 
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}