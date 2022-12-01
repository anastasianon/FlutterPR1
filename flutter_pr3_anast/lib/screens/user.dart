import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pr3_anast/screens/signIn.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => UserState();
}

class UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text(
              "Пользователь",
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)),
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}
