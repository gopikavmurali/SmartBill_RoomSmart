import 'package:flutter/material.dart';
import 'package:smart_bill/screens/LoginScreen.dart';



void main() {
  runApp(const MyApp());
 }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          ),
        home: const LoginScreen()
     );
   }
 }

